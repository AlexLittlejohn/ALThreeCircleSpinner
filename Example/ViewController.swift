//
//  ViewController.swift
//  ALThreeCircleSpinner
//
//  Created by Alex Littlejohn on 2015/05/04.
//  Copyright (c) 2015 zero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let spinner = ALThreeCircleSpinner(frame: CGRectMake(0, 0, 44, 44))

    
    // example stuff
    let toggleLabel = UILabel()
    let toggle = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(spinner)
        spinner.tintColor = UIColor.redColor()
        spinner.hidesWhenStopped = false
        
        
        // example stuff
        view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        view.addSubview(toggleLabel)
        view.addSubview(toggle)
        
        toggleLabel.text = "Is Animating"
        toggle.setOn(true, animated: false)
        toggle.addTarget(self, action: #selector(valueChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        spinner.center = view.center
        
        
        // example stuff
        toggleLabel.sizeToFit()
        toggle.sizeToFit()
        
        let spacing: CGFloat = 20
        let toggleSize = toggle.frame.size
        let labelSize = toggleLabel.frame.size
        
        let labelX = view.frame.size.width/2 - (labelSize.width + spacing + toggleSize.width)/2
        let toggleX = labelX + labelSize.width + spacing
        
        let labelY = view.frame.size.height - 100
        let toggleY = labelY + (labelSize.height/2 - toggleSize.height/2)
        
        toggleLabel.frame = CGRectMake(labelX, labelY, labelSize.width, labelSize.height)
        toggle.frame = CGRectMake(toggleX, toggleY, toggleSize.width, toggleSize.height)
    }
    
    func valueChanged(sender: UISwitch) {
        if toggle.on {
            spinner.startAnimating()
        } else {
            spinner.stopAnimating()
        }
    }
}

