//
//  ViewController.swift
//  MatchingGame
//
//  Created by Stefano Casafranca Laos on 9/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var Button4: UIButton!
    
    
    var images = [
        "canserbero-logo",
        "dobleV-logo"
    ]
    
    var clickCount = 0
    var firstButtonClicked:UIButton? = nil
    var firstImageName: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //images.shuffle()
    }
    
    @IBAction func Button1(_ sender: Any) {
        handleButtonClick(button: Button1, imageIndex: 0)
        // Button1.setImage(UIImage(named: images[0]), for: .normal)
    }
    
    
    @IBAction func Button2(_ sender: Any) {
        handleButtonClick(button: Button2, imageIndex: 1)
        //Button2.setImage(UIImage(named: images[1]), for: .normal)
        
    }
    
    @IBAction func Button3(_ sender: Any) {
        handleButtonClick(button: Button3, imageIndex: 0)
        // Button3.setImage(UIImage(named: images[2]), for: .normal)
        
    }
    
    
    @IBAction func Button4(_ sender: Any) {
        handleButtonClick(button: Button4, imageIndex: 1)
        //  Button4.setImage(UIImage(named: images[3]), for: .normal)
        
    }
    
    func handleButtonClick(button: UIButton, imageIndex: Int) {
        // When it's the first click
        if clickCount == 0 {
            // Show the image for the button clicked
            button.setImage(UIImage(named: images[imageIndex]), for: .normal)
            
            // Remember which button and image you clicked first
            firstButtonClicked = button
            firstImageName = images[imageIndex]
            
            // Now, wait for the second click
            clickCount = 1
            
        } else if clickCount == 1 {
            // Show the image for the second button clicked
            button.setImage(UIImage(named: images[imageIndex]), for: .normal)
            
            
            
            // Check if the second image matches the first one
            if firstImageName == images[imageIndex] {
                
                print("It's a match!")
                
                
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    
                    // Hide the first button clicked
                    self.firstButtonClicked?.setImage(nil, for: .normal)
                    // Hide the second button clicked
                    button.setImage(nil, for: .normal)
                    
                               
                    
                    
                }
            }
            // After two clicks, reset everything for the next round
           /* clickCount = 0
            firstButtonClicked = nil
            firstImageName = nil*/
        }
    }
}
   
           

