//
//  Clean_ArchitectureApp.swift
//  Shared
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//

import SwiftUI

@main
struct Clean_ArchitectureApp: App {
    var body: some Scene {
        WindowGroup {
            LoginFactory.getLoginView()
        }
    }
}
