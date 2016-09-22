//
//  ViewController.swift
//  AllTheBasics
//
//  Created by James Campagno on 6/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.averageIsAbove(5, b: 6, c: 7)
//        
//        self.passwordCombo("Ryan", password: 6)
//        self.passwordCombo("Elaine", password: 5)
//        self.passwordCombo("Jerry", password: 9)
//        
//        self.describe("👠")
//        self.describe("🐈")
//        self.describe("🐢")
//        self.describe("🍕")
        
    }
    
//    1 - Create a function named averageIsAbove75 that takes in three arguments with the type Double and a return type of Bool. It should take these three values and find their average. If the average is greater than 75.0, then return true, else return false.
//  
    
    func averageIsAbove(a : Double, _  b: Double, _ c : Double) -> Bool {
        
        let averageOfThreeInts = (a + b + c) / 3
        
        if averageOfThreeInts > 75 {
            print("averageOfThreeInts = true")
            return true
        }
        else {
            print("averageOfThreeInts = false")
            return false
        }
    }
    
/*    2 - Create a function named passwordCombo that takes in two arguments, one of type String which represents the username and the other of type Int which represents the password. This function will return a String letting the caller of this function know if the username/password combo passed into the function is correct!
    What makes it correct? The conditions are.. the username String must be either 'Jerry', 'Elaine', or 'Michael'. The password must be divisible by 3. If the username + password conditions pass, then return back the String "Welcome!". If either fail, then the String to be returned should be "Access Denied"
*/ // Implement your functions here!
    
    func passwordCombo(username : String, password : Int) -> String {
        
        if username == "Jerry" || username == "Elaine" || username == "Michael" {
            
            if password % 3 == 0 {
                print("Welcome \(username)")
                return "Welcome"
            }
            else {
                print("Access denied b/c password \(username)")
                return "Access Denied"
            }
        }
        else {
            print("Access denied b/c name \(username)")
            return "Access Denied"
        }
    }
    

/*    3 - Create the function describe(emoji:). It should take in one argument of type String and return back a String.
    You should switch on the emoji argument in your implementation and return back a String describing the emoji that is passed in as an argument. The emoji's and their descriptions you should include in your switch statement are the following:
    💋 - "Kiss"
    🐈 - "Cat"
    🐢 - "Turtle"
    🍕 - "Pizza"
    👻 - "Ghost"
    For the default case, we should return back the String "Unknown".
    */
    
    func describe(emoji : String) -> String {
        
        switch emoji {
        case "💋":
            print("\(emoji) = kiss")
            return "Kiss"
        case "🐈":
            print("\(emoji) = cat")
            return "Cat"
        case "🐢":
            print("\(emoji) = turtle")
            return "Turtle"
        case "🍕":
            print("\(emoji) = pizza")
            return "Pizza"
        case "👻":
            print("\(emoji) = ghost")
            return "Ghost"
        default:
            print("\(emoji) unknown")
            return "Unknown"
        }
    }
}
