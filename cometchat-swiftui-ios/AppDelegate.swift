//
//  AppDelegate.swift
//  cometchat-swiftui-ios
//
//  Created by Sampada Shankar on 10/07/25.
//

import Foundation
import CometChatSDK

class AppDelegate: UIResponder, UIApplicationDelegate{

   var window: UIWindow?
   let appId: String = "YOUR_APP_ID"
   let region: String = "YOUR_REGION_CODE"

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

let mySettings = AppSettings.AppSettingsBuilder().subscribePresenceForAllUsers().setRegion(region: region).build()

  CometChat.init(appId: appId ,appSettings: mySettings,onSuccess: { (isSuccess) in
            if (isSuccess) {
                print("CometChat SDK intialise successfully.")
            }
        }) { (error) in
                print("CometChat SDK failed intialise with error: \\(error.errorDescription)")
        }
        return true
    }
}
