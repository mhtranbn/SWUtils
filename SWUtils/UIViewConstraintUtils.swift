//
//  UIViewConstraintUtils.swift
//  SWUtils
//
//  Created by mhtran on 11/13/17.
//  Copyright © 2017 mhtran. All rights reserved.
//
import UIKit

extension UIView {
    
    public func findConstraintName(_ name: String) -> NSLayoutConstraint? {
        var targetConstraint: NSLayoutConstraint?
        for constraint in self.constraints {
            if constraint.identifier == name {
                targetConstraint = constraint
                break
            }
        }
        return targetConstraint
    }
    
    public func removeConstraintName(_ name: String) -> NSLayoutConstraint? {
        if let constraint = findConstraintName(name) {
            self.removeConstraint(constraint)
            return constraint
        }
        return nil
    }
    
    public func addSingleAttributeEqualConstraint(name: String?, attribute: NSLayoutAttribute, multiplier: CGFloat,
                                           constant: CGFloat, priority: UILayoutPriority? = nil) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute: attribute, relatedBy: .equal,
                                            toItem: nil, attribute: .notAnAttribute,
                                            multiplier: multiplier, constant: constant)
        if let p = priority {
            constraint.priority = p
        }
        constraint.identifier = name
        self.addConstraint(constraint)
        return constraint
    }
    
    public func addSubviewWithFitConstraints(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = self.bounds
        self.addSubview(view)
        var constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|",
                                                         options: NSLayoutFormatOptions(rawValue: 0),
                                                         metrics: nil, views: ["view": view])
        self.addConstraints(constraints)
        constraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|",
                                                     options: NSLayoutFormatOptions(rawValue: 0),
                                                     metrics: nil, views: ["view": view])
        self.addConstraints(constraints)
        self.setNeedsLayout()
    }
    
    public func addSubviewWithInsetConstraints(view: UIView, insets: UIEdgeInsets) {
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        var constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-left-[view]-right-|",
                                                         options: NSLayoutFormatOptions(rawValue: 0),
                                                         metrics: ["left": insets.left, "right": insets.right],
                                                         views: ["view": view])
        self.addConstraints(constraints)
        constraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[view]-bottom-|",
                                                     options: NSLayoutFormatOptions(rawValue: 0),
                                                     metrics: ["top": insets.top, "bottom": insets.bottom],
                                                     views: ["view": view])
        self.addConstraints(constraints)
        self.setNeedsLayout()
    }
    
}
