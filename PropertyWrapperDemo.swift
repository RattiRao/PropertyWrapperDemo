//
//  ViewController.swift
//  PropertyWrapperDemo
//
//  Created by Ratti on 29/12/21.
//

import UIKit

@propertyWrapper struct MakeCapitalized{
    var wrappedValue: String {
        get{
            return value
        }
        set{
            self.value = newValue.capitalized
        }
    }
    
    var value: String
}

class ViewController: UIViewController {
    @MakeCapitalized(value: "") var testValue: String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testValue = "test information"
        print(testValue)
    }
    
}

