//
//  DEStackView.swift
//  Test
//
//  Created by baby1234 on 2019/10/20.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

open class DEStackView: UIStackView {

    public required init(coder: NSCoder) {
        super.init(coder: coder)
    }

    open func addView(newView: DEXibView) {
        let idx = self.arrangedSubviews.count - 1
        newView.initUI()
        newView.isHidden = true
        self.insertArrangedSubview(newView, at: idx)
        UIView.animate(withDuration: 0) { newView.isHidden = false }
    }
}
