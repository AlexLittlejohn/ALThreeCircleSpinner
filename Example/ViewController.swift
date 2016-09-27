//
//  ViewController.swift
//  ALThreeCircleSpinner
//
//  Created by Alex Littlejohn on 2015/05/04.
//  Copyright (c) 2015 zero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let spinner = ALThreeCircleSpinner(frame: CGRect(x: 0, y: 0, width: 44, height: 44))

    
    // example stuff
    let toggleLabel = UILabel()
    let toggle = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(spinner)
        spinner.tintColor = UIColor.red
        spinner.hidesWhenStopped = false
        
        
        // example stuff
        view.backgroundColor = UIColor.groupTableViewBackground
        view.addSubview(toggleLabel)
        view.addSubview(toggle)
        
        toggleLabel.text = "Is Animating"
        toggle.setOn(true, animated: false)
        toggle.addTarget(self, action: #selector(valueChanged(_:)), for: UIControlEvents.valueChanged)
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
        
        toggleLabel.frame = CGRect(x: labelX, y: labelY, width: labelSize.width, height: labelSize.height)
        toggle.frame = CGRect(x: toggleX, y: toggleY, width: toggleSize.width, height: toggleSize.height)
    }
    
    func valueChanged(_ sender: UISwitch) {
        if toggle.isOn {
            spinner.startAnimating()
        } else {
            spinner.stopAnimating()
        }
    }
}

