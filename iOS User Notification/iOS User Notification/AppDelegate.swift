//
//  AppDelegate.swift
//  iOS User Notification
//
//  Created by Jay Buddhdev on 20/07/22.
//

import UIKit
import FirebaseCore
import FirebaseInAppMessaging

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        InAppMessaging.inAppMessaging().delegate = self
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
       // Will be Implemeted Later
    }

}

// MARK: InAppMessagingDisplayDelegate
extension AppDelegate : InAppMessagingDisplayDelegate {
    
    func messageClicked(_ inAppMessage: InAppMessagingDisplayMessage) {
        print("Hello Message Clicked")
    }
    func messageDismissed(_ inAppMessage: InAppMessagingDisplayMessage,
                          dismissType: FIRInAppMessagingDismissType) {
        print("Message Dismissed!")
    }
    
    func impressionDetected(for inAppMessage: InAppMessagingDisplayMessage) {
        // ...
        print("Impression Detected")
    }
    
    func displayError(for inAppMessage: InAppMessagingDisplayMessage, error: Error) {
        // ...
        print("Display Error")
    }
}
