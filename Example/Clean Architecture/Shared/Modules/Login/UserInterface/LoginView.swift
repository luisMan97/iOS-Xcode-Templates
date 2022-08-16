//
//  LoginView.swift
//  Clean Architecture
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        VStack {
            TextField("User:", text: $viewModel.user)
            TextField("Password:", text: $viewModel.password)
            Button(action: login) { loginButtonView }
        }.sheet(item: $viewModel.Login) {
            Text("Bienvenido, \($0.user)")
        }
        .alert(item: $viewModel.error) {
            Alert(
                title: Text("Error"),
                message: Text($0),
                dismissButton: .default(Text("Ok"))
            )
        }
    }
    
    var loginButtonView: some View {
        Text("Sign In")
    }
    
    private func login() {
        Task { await viewModel.doSomething() }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFactory.getLoginView()
    }
}
