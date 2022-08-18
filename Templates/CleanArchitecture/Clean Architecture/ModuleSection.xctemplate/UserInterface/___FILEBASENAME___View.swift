//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import SwiftUI

struct ___VARIABLE_sceneName___View: View {
    
    @ObservedObject var viewModel: ___VARIABLE_sceneName___ViewModel
    
    var body: some View {
        if #available(iOS 15.0, *) {
            Text("")
                .task {
                    await viewModel.doSomething()
                }
        } else {
            Text("")
                .onAppear {
                    Task { await viewModel.doSomething() }
                }
        }
    }
    
}

struct ___VARIABLE_sceneName___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_sceneName___Factory.get___VARIABLE_sceneName___View()
    }
}
