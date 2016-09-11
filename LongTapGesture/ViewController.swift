//
//  ViewController.swift
//  LongTapGesture
//
//  Created by Michail on 9/11/16.
//  Copyright © 2016 mishaparadising. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var tapOrHoldLabel: UILabel!

    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(longPress))
        
        addResetButton()

        tapOrHoldLabel.addGestureRecognizer(tapGesture)
        tapOrHoldLabel.addGestureRecognizer(longGesture)
        
        counterLabel.text = String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addResetButton() {
        self.navigationItem.hidesBackButton = true
        
        let resetButton = UIBarButtonItem(
            title: "Reset",
            style: UIBarButtonItemStyle.Plain,
            target: self,
            action: #selector(resetButtonTapped))
        
        self.navigationItem.leftBarButtonItem = resetButton
    }
    
    func resetButtonTapped() {
        counter = 0
        counterLabel.text = String(counter)
    }
    
    func tap(sender: UITapGestureRecognizer) {
        increaseCounter()
    }
    
    func longPress(sender: UILongPressGestureRecognizer) {
        increaseCounter()
    }
    
    func increaseCounter() {
        counter += 1
        counterLabel.text = String(counter)
    }
}
