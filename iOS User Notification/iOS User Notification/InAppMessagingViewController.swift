//
//  InAppMessagingViewController.swift
//  iOS User Notification
//
//  Created by Jay Buddhdev on 21/07/22.
//

import UIKit
import FirebaseInAppMessaging

class InAppMessagingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        InAppMessaging.inAppMessaging().triggerEvent("exampleTrigger")
        // Do any additional setup after loading the view.
    }
    
}
