//
//  StoryboardViewController.swift
//  Demo
//
//  Created by baby1234 on 2019/10/21.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit
import DEStackView

class StoryboardViewController: UIViewController {

    @IBOutlet weak var stackView: DEStackView!
    @IBOutlet weak var addBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addBtnTaps(_ sender: UIButton) {
        let myView = StoryboardView()
        stackView.addView(newView: myView)
    }

}

