//
//  DEView.swift
//  DEStackView
//
//  Created by baby1234 on 2019/10/21.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

open class DEView: UIView {
    open func initUI() {}

    @objc open func deleteBtnTaps(sender: UIButton) {
        guard let view = sender.superview else { return }
        UIView.animate(withDuration: 0.1,
                       animations: { view.isHidden = true },
                       completion: { (_) in view.removeFromSuperview() })
    }
}

