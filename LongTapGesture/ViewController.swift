//
//  ViewController.swift
//  LongTapGesture
//
//  Created by Michail on 9/11/16.
//  Copyright © 2016 mishaparadising. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var tapOrHoldLabel: UILabel!

    // MARK: Properties
    var counter: Int = 0
    
    
    // MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(longPress))

        tapOrHoldLabel.addGestureRecognizer(tapGesture)
        tapOrHoldLabel.addGestureRecognizer(longGesture)
        
        counterLabel.text = String(counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Actions
    @IBAction func resetBarButtonTapped(sender: UIButton) {
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
