//
//  ViewController.swift
//  SettingsBundleDemo
//
//  Created by Vasiliki Trachani on 6/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpEnvironment()
    }

    fileprivate func setUpEnvironment() {
        let currentEnvironment = EnvironmentHelper().getCurrentEnvironment()
        titleText.text = currentEnvironment.name
        print(currentEnvironment)
    }

}

