//
//  FormerTextFooterView.swift
//  Former-Demo
//
//  Created by Ryo Aoyama on 7/26/15.
//  Copyright © 2015 Ryo Aoyama. All rights reserved.
//

import UIKit

public class FormerTextFooterView: FormerHeaderFooterView, TextFormableView {
    
    public private(set) weak var titleLabel: UILabel!
    
    public func formerTextLabel() -> UILabel {
        
        return self.titleLabel
    }
    
    override public func setup() {
        
        super.setup()
        
        let titleLabel = UILabel()
        titleLabel.font = UIFont.systemFontOfSize(14.0)
        titleLabel.textAlignment = .Center
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.insertSubview(titleLabel, atIndex: 0)
        self.titleLabel = titleLabel
        
        let constraints = [
            NSLayoutConstraint.constraintsWithVisualFormat(
                "V:|-5-[label]-5-|",
                options: [],
                metrics: nil,
                views: ["label": titleLabel]
            ),
            NSLayoutConstraint.constraintsWithVisualFormat(
                "H:|-15-[label]-15-|",
                options: [],
                metrics: nil,
                views: ["label": titleLabel]
            )
        ]
        self.contentView.addConstraints(constraints.flatMap { $0 })
    }
}