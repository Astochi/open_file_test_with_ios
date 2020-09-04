//
//  ViewController.swift
//  open_file_test_with_ios
//
//  Created by Hex on 04.09.2020.
//  Copyright © 2020 Hex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func startFlutterButtonClicked(_ sender: Any) {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController =
            FlutterModuleViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

