//
//  CMTouchThroughView.swift
//  SWUtils
//
//  Created by mhtran on 11/13/17.
//  Copyright © 2017 mhtran. All rights reserved.
//
import UIKit

class CMTouchThroughView: UIView {

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        for view in self.subviews {
            let subPoint = self.convert(point, to: view)
            if let testView = view.hitTest(subPoint, with: event) {
                return testView
            }
        }
        return nil
    }

}
