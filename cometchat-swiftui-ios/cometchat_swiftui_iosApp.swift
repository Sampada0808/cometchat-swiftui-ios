//
//  cometchat_swiftui_iosApp.swift
//  cometchat-swiftui-ios
//
//  Created by Sampada Shankar on 10/07/25.
//

import SwiftUI

@main
struct cometchat_swiftui_iosApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ChatHeaderView()
        }
    }
}
