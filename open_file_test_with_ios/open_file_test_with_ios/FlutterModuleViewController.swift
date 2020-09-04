//
//  FlutterModuleViewController.swift
//  open_file_test_with_ios
//
//  Created by Hex on 04.09.2020.
//  Copyright © 2020 Hex. All rights reserved.
//

import Foundation
import Flutter

class FlutterModuleViewController : FlutterViewController, UIGestureRecognizerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gestureRecognizer = UIGestureRecognizer()
        gestureRecognizer.delegate = self

        self.view.addGestureRecognizer(gestureRecognizer)
    }

    private func disableDismissalRecognizers() {
        presentationController?.presentedView?.gestureRecognizers?.forEach {
            $0.isEnabled = false
        }
    }

    private func enableDismissalRecognizers() {
        presentationController?.presentedView?.gestureRecognizers?.forEach {
            $0.isEnabled = true
        }
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if touch.location(in: touch.view).y > 65.0 {
            disableDismissalRecognizers()
        }
        else {
            enableDismissalRecognizers()
        }
        return false
    }
}
