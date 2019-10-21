//
//  CodeView.swift
//  Demo
//
//  Created by baby1234 on 2019/10/21.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit
import DEStackView

class CodeView: DEView {
    override func initUI() {
        let titleLbl = UILabel()
        let deleteBtn = UIButton()

        self.addSubview(titleLbl)
        self.addSubview(deleteBtn)

        titleLbl.textColor = .black
        deleteBtn.setTitleColor(.black, for: .normal)

        titleLbl.text = "IT IS TITLE"
        deleteBtn.setTitle("delete", for: .normal)

        titleLbl.font = UIFont.systemFont(ofSize: 20)
        deleteBtn.titleLabel?.font = UIFont.systemFont(ofSize: 13)

        deleteBtn.addTarget(self, action: #selector(deleteBtnTaps), for: .touchUpInside)

        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        deleteBtn.translatesAutoresizingMaskIntoConstraints = false
        self.translatesAutoresizingMaskIntoConstraints = false

        titleLbl.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleLbl.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        titleLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true

        deleteBtn.centerYAnchor.constraint(equalTo: titleLbl.centerYAnchor).isActive = true
        deleteBtn.leadingAnchor.constraint(equalTo: titleLbl.trailingAnchor, constant: 5).isActive = true
    }
}
