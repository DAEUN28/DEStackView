//
//  DEStackView.swift
//  Test
//
//  Created by baby1234 on 2019/10/20.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

open class DEStackView: UIStackView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }

    public required init(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }

    private func commonInit() {
        self.alignment = .fill
        self.distribution = .equalSpacing
    }

    open func addView(newView: DEView) {
        let idx = self.arrangedSubviews.count - 1
        newView.initUI()
        newView.isHidden = true
        self.insertArrangedSubview(newView, at: idx)
        UIView.animate(withDuration: 0) { newView.isHidden = false }
    }
}
