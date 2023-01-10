//
//  ViewController.swift
//  AutoLayoutGuide
//
//  Created by Marina Karpova on 09.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - ver1 constraint
    
    //    let view1: UIView = {
    //        let view = UIView()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
    //        view.backgroundColor = .green
    //        return view
    //    }()
    
    
    
    //MARK: - ver2 and ver3 createView
    let viewRed: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let viewBlue: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    
    //MARK: - ver3 createView
    let viewGreen: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - ver1 constraint
        //        view.addSubview(view1)
        //        createView1Constraint()
        
        //MARK: - ver2 and ver3
        
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        view.addSubview(viewGreen)
        
        
        //MARK: - ver3 Anchors methods
        createViewRedConstraint()
        createViewBlueConstraint()
        createViewGreenConstraint()
        
        
        //MARK: - ver2 VFL
        //        let viewVFL = ["viewRed": viewRed, "viewBlue": viewBlue]
        //        let metrics = ["height": 100, "width": 100, "top": view.bounds.size.height / 2]
        //
        //        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewRed(height)]|", metrics: metrics, views: viewVFL))
        //        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewBlue(height)]|", metrics: metrics, views: viewVFL))
        //        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[viewRed(width)]-(50)-[viewBlue(width)]-|", metrics: metrics, views: viewVFL))
        //
    }
    
    //MARK: - ver3 Anchors createMethods
    
    func createViewRedConstraint() {
        viewRed.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewRed.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewRed.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewRed.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func createViewBlueConstraint() {
        viewBlue.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewBlue.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewBlue.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func createViewGreenConstraint() {
        viewGreen.rightAnchor.constraint(equalTo: viewBlue.rightAnchor ).isActive = true
        viewGreen.leftAnchor.constraint(equalTo: viewRed.leftAnchor).isActive = true
        viewGreen.bottomAnchor.constraint(equalTo: viewRed.topAnchor, constant: -20).isActive = true
        viewGreen.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    
    
    
    
    
    //MARK: - ver1 constraint createMethods
    
    //    func createView1Constraint() {
    //            NSLayoutConstraint(item: view1,
    //                               attribute: .leading,
    //                               relatedBy: .equal,
    //                               toItem: view, attribute: .leadingMargin,
    //                               multiplier: 1.0, constant: 0).isActive = true
    //
    //            NSLayoutConstraint(item: view1,
    //                               attribute: .trailingMargin,
    //                               relatedBy: .equal,
    //                               toItem: view, attribute: .trailingMargin,
    //                               multiplier: 1.0, constant: 0).isActive = true
    //            NSLayoutConstraint(item: view1,
    //                               attribute: .top ,
    //                               relatedBy: .equal,
    //                               toItem: view, attribute: .topMargin,
    //                               multiplier: 1.0, constant: 88).isActive = true
    //            NSLayoutConstraint(item: view1,
    //                               attribute: .height,
    //                               relatedBy: .equal,
    //                               toItem: view1, attribute: .width,
    //                               multiplier: 1.0, constant: 0).isActive = true
    //
    //        NSLayoutConstraint(item: view1,
    //                           attribute: .centerX,
    //                           relatedBy: .equal,
    //                           toItem: view, attribute: .centerX,
    //                           multiplier: 1.0, constant: 0).isActive = true
    //
    //        NSLayoutConstraint(item: view1,
    //                           attribute: .centerY,
    //                           relatedBy: .equal,
    //                           toItem: view, attribute: .centerY,
    //                           multiplier: 1.0, constant: 0).isActive = true
    //        NSLayoutConstraint(item: view1,
    //                           attribute: .width ,
    //                           relatedBy: .equal,
    //                           toItem: nil, attribute: .notAnAttribute,
    //                           multiplier: 1.0, constant: 200).isActive = true
    //        NSLayoutConstraint(item: view1,
    //                           attribute: .height,
    //                           relatedBy: .equal,
    //                           toItem: nil, attribute: .notAnAttribute,
    //                           multiplier: 1.0, constant: 200).isActive = true
    //}
    
    
    
}



