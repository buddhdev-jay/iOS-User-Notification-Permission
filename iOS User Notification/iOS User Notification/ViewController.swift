//
//  ViewController.swift
//  iOS User Notification
//
//  Created by Jay Buddhdev on 20/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

// MARK: Outlet Action
extension ViewController {
    
    @IBAction func onClickGoToSecondVC(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "InAppMessagingViewController") as? InAppMessagingViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
