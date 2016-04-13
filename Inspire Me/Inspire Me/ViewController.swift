//
//  ViewController.swift
//  Inspire Me
//
//  Created by Mamadou Kaba on 4/12/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var quotes = Quotes()
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func randomImage() -> UIImage {
        let imageCount = 16
        let randomNumber = Int(arc4random_uniform(UInt32(imageCount)))
        
        if let image = UIImage(named: "image\(randomNumber)") {
            return image
        } else {
            return UIImage(named: "image1")!
        }
    }
    @IBAction func inspireMeDidTap(sender: UIButton) {
        let quote = quotes.randomQuote()
        quoteLabel.text = quote
        quoteLabel.textColor = randomLabelColor()
        
        let image = randomImage()
        backgroundImageView.image = image
        
        sender.backgroundColor = randomColor()
    }
    
    func randomColor() -> UIColor {
        let colorCount = 15
        let randomNumber = Int(arc4random_uniform(UInt32(colorCount)))
        
        switch randomNumber {
        case 0 : return UIColor(red: 161/255.0, green: 78/255.0, blue: 41/255.0, alpha: 0.9)
        case 1 : return UIColor(red: 248/255.0, green: 90/255.0, blue: 139/255.0, alpha: 0.9)
        case 2 : return UIColor(red: 8/255.0, green: 126/255.0, blue: 41/255.0, alpha: 0.9)
        case 3 : return UIColor(red: 193/255.0, green: 131/255.0, blue: 159/255.0, alpha: 0.9)
        case 4 : return UIColor(red: 88/255.0, green: 125/255.0, blue: 113/255.0, alpha: 0.9)
        case 5 : return UIColor(red: 77/255.0, green: 170/255.0, blue: 87/255.0, alpha: 0.9)
        case 6 : return UIColor(red: 181/255.0, green: 221/255.0, blue: 184/255.0, alpha: 0.9)
        case 7 : return UIColor(red: 249/255.0, green: 236/255.0, blue: 204/255.0, alpha: 0.9)
        case 8 : return UIColor(red: 117/255.0, green: 70/255.0, blue: 104/255.0, alpha: 0.9)
        case 9 : return UIColor(red: 187/255.0, green: 207/255.0, blue: 174/255.0, alpha: 0.9)
        case 10 : return UIColor(red: 2/255.0, green: 199/255.0, blue: 87/255.0, alpha: 0.9)
        case 11 : return UIColor(red: 255/255.0, green: 189/255.0, blue: 50/255.0, alpha: 0.9)
        case 12 : return UIColor(red: 255/255.0, green: 84/255.0, blue: 0/255.0, alpha: 0.9)
        case 13 : return UIColor(red: 255/255.0, green: 0/255.0, blue: 84/255.0, alpha: 0.9)
        case 14 : return UIColor(red: 158/255.0, green: 0/255.0, blue: 89/255.0, alpha: 0.9)
        default: return UIColor(red: 57/255.0, green: 0/255.0, blue: 157/255.0, alpha: 0.9)
        }
    }
    
    func randomLabelColor() -> UIColor {
        let colorCount = 4
        let randomNumber = Int(arc4random_uniform(UInt32(colorCount)))
        
        switch randomNumber {
        case 0 : return UIColor(red: 251/255.0, green: 187/255.0, blue: 183/255.0, alpha: 0.9)
        case 1 : return UIColor(red: 255/255.0, green: 68/255.0, blue: 15/255.0, alpha: 0.9)
        case 2 : return UIColor(red: 251/255.0, green: 255/255.0, blue: 241/255.0, alpha: 0.9)
        case 3 : return UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.9)
        default: return UIColor(red: 210/255.0, green: 228/255.0, blue: 215/255.0, alpha: 0.9)
        }
        
    }
}

