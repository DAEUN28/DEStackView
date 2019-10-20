//
//  XibView.swift
//  Test
//
//  Created by baby1234 on 2019/10/20.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

open class DEXibView: UIView {

    open override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }

    open required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func commonInit() {
        guard let xibName = NSStringFromClass(self.classForCoder).components(separatedBy: ".").last else { return }
        let view = Bundle.main.loadNibNamed(xibName, owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }

    open func initUI() {}

    @objc open func deleteBtnTaps(sender: UIButton) {
        guard let view = sender.superview else { return }
        UIView.animate(withDuration: 0.1,
                       animations: { view.isHidden = true },
                       completion: { (_) in view.removeFromSuperview() })
    }
}
