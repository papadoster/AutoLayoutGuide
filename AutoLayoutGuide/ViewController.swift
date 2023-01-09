//
//  ViewController.swift
//  AutoLayoutGuide
//
//  Created by Marina Karpova on 09.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let view1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.backgroundColor = .green
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        createView1Constraint()
    }
    
    func createView1Constraint() {
//        NSLayoutConstraint(item: view1,
//                           attribute: .leading,
//                           relatedBy: .equal,
//                           toItem: view, attribute: .leadingMargin,
//                           multiplier: 1.0, constant: 0).isActive = true
//
//        NSLayoutConstraint(item: view1,
//                           attribute: .trailingMargin,
//                           relatedBy: .equal,
//                           toItem: view, attribute: .trailingMargin,
//                           multiplier: 1.0, constant: 0).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .top ,
//                           relatedBy: .equal,
//                           toItem: view, attribute: .topMargin,
//                           multiplier: 1.0, constant: 88).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: view1, attribute: .width,
//                           multiplier: 1.0, constant: 0).isActive = true
        
        NSLayoutConstraint(item: view1,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view, attribute: .centerX,
                           multiplier: 1.0, constant: 0).isActive = true

        NSLayoutConstraint(item: view1,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: view, attribute: .centerY,
                           multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .width ,
                           relatedBy: .equal,
                           toItem: nil, attribute: .notAnAttribute,
                           multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil, attribute: .notAnAttribute,
                           multiplier: 1.0, constant: 200).isActive = true
    }
    
}

