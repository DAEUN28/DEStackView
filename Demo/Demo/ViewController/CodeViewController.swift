//
//  CodeViewController.swift
//  Demo
//
//  Created by baby1234 on 2019/10/21.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit
import DEStackView

class CodeViewController: UIViewController {

    let scrollView = UIScrollView()
    let stackView = DEStackView()
    let addBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }

    private func makeUI() {

        self.view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.insertArrangedSubview(addBtn, at: 0)

        stackView.axis = .vertical
        addBtn.setTitle("add", for: .normal)
        addBtn.setTitleColor(.black, for: .normal)
        addBtn.addTarget(self, action: #selector(addBtnTaps), for: .touchUpInside)

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true

        stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
    }

    @objc func addBtnTaps(_ sender: UIButton) {
        let myView = CodeView()
        stackView.addView(newView: myView)
    }
    
}
