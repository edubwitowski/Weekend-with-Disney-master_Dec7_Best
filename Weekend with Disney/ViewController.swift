// Do any additional setup after loading the view, typically from a nib.
// Create a PlistFile structure for file named data.plist
//     let someCollection = PlistFile(name: "data")
//Mark 1
// Load the data from the file into an array of optional type [Any]?
//     let someArray = someCollection.array
//Mark 2
// Load the data from the file into an array and cast it as type [[String: String]]?
//     let someArray = someCollection.array as? [[String: String]]
//Mark3
// Load the data from the file into a dictionary of optional type [String: Any]?
//     let someArray = someCollection.dictionary
//mark4
//      let disneyArray = disneyCollection.dictionary
// Load the data from the file into a dictionary and cast it as optional type [String: String]?
//     let someArray = someCollection.dictionary as? [String: String]
//mark5
//     let disneyArray = disneyCollection *********************************************************************************************
//mark1/var Items:[[AnyIndex:String]] = [AnyIndex]


//
//  Created by Macbook on 11/1/17.
//  Copyright © 2017 Eric Witowski. All rights reserved.
//

import UIKit
import Foundation




class ViewController: UIViewController {
   
    
    
    
    var disneyArray:[[String:String]] = []
    
    
    var currentMe: Int = 0
  
    
    
    @IBOutlet weak var viewBackButton: UIButton!
    @IBOutlet weak var viewNextButton: UIButton!
    
    
    
    @IBOutlet weak var picMe: UIImageView!
    @IBOutlet weak var readMe: UITextView!
    
    
    ////////////
        @IBAction func viewBackButton(_ sender: UIButton) {
            currentMe -= 1
            if currentMe < 0 {
                currentMe = disneyArray.count-1
                
                //10:18picMe.image = UIImage(named: "picMe")
                
            }
            displayMe()
        }
        
        @IBAction func viewNextButton(_ sender: UIButton) {
            currentMe += 1
            if currentMe >= disneyArray.count {
                currentMe = 0
                
                //10:18picMe.image = UIImage(named: "picMe")
            }
            displayMe()
        }
    
        
        func displayMe() {
            
            readMe.text = disneyArray[currentMe]["readMe"]
            picMe.image = UIImage(named: disneyArray[currentMe]["picMe"]!)
        }
     override func viewDidLoad() {
            super.viewDidLoad()

    
        // Do any additional setup after loading the view, typically from a nib.
        // Create a PlistFile structure for file named data.plist
        //     let someCollection = PlistFile(name: "data")
        //Mark 1
        // Load the data from the file into an array of optional type [Any]?
        //     let someArray = someCollection.array
        //Mark 2
        // Load the data from the file into an array and cast it as type [[String: String]]?
        //     let someArray = someCollection.array as? [[String: String]]
        //Mark3
        // Load the data from the file into a dictionary of optional type [String: Any]?
        //     let someArray = someCollection.dictionary
        //mark4    //      let disneyArray = disneyCollection.dictionary
        // Load the data from the file into a dictionary and cast it as optional type [String: String]?
        //     let someArray = someCollection.dictionary as? [String: String]
        //mark5     //     let disneyArray = disneyCollection *********************************************************************************************
        //mark1
        
       let disneyCollection = PlistFile(name: "disneyTimes")
        
    
    disneyArray = (disneyCollection.array as? [[String: String]])!
        
        displayMe()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        displayMe()
}
}
        
        
        
        

