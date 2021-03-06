//
//  ViewController.swift
//  UIinCode
//
//  Created by Alex Perucchini on 5/3/19.
//  Copyright © 2019 Alex Perucchini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = UIColor.red
        label1.text = "THESE"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.green
        label2.text = "ARE"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.blue
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = UIColor.orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        var labels: [UILabel] = []
        labels = [label1, label2, label3, label4, label5]
        
        for label in labels {
            view.addSubview(label)
        }
        
        var previous: UILabel?
        
        for label in labels  {
            let safeGuide = self.view.safeAreaLayoutGuide
            
            label.leadingAnchor.constraint(equalTo: safeGuide.leadingAnchor, constant: 5).isActive = true
            label.trailingAnchor.constraint(equalTo: safeGuide.trailingAnchor, constant: 5).isActive = true
            label.heightAnchor.constraint(equalTo: safeGuide.heightAnchor, multiplier: 0.20, constant: -10 ).isActive = true
            label.layer.cornerRadius = 5
    
            if let previous = previous {
                // we have a previous label – create a height constraint
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                // this is the first label
                label.topAnchor.constraint(equalTo: safeGuide.topAnchor, constant: 0).isActive = true
            }
            
            // set the previous label to be the current one, for the next loop iteration
            previous = label
        }

//        // create a dictionary to use for the VFL (visual format language)
//        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
//
//        for label in viewsDictionary {
//            view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label.key)]|", options: [], metrics: nil, views: viewsDictionary))
//        }
//
//        let metrics = ["labelHeight": 88]
//
//        // the @999 that assigns priority to a given constraint, and using (label1) for the sizes of the other labels is what tells Auto Layout to make them the same height.
//        view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
    }
}

