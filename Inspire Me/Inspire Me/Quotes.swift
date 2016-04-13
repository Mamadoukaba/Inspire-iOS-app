//
//  Quotes.swift
//  Inspire Me
//
//  Created by Mamadou Kaba on 4/12/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import Foundation

class Quotes {
    
    
    //Array/ Collection of quotes taht will be displayed in the label.
    var quotes = ["In order to succeed, we must first believe that we can", "Either you run the day or the day runs you", "A creative man is motivated by the desire to achieve, not by the desire to beat others", "The secret of getting ahead is getting started", "Always do your best. What you plant now, you will harvest later", "The only true wisdom is knowing that you know nothing", "If you are not willing to risk the usual you will have to settle for the ordinary", "Trust because you are willing to accept the risk, not because it’s safe or certain", "Screw it, Let’s do it!", "Innovation distinguishes between a leader and a follower", "The more you loose yourself in something bigger than yourself, the more energy you will have", "Courage is being scared to death, but saddling up anyway", "The entrepreneur builds an enterprise; the technician builds a job", "As long as you’re going to be thinking anyway, think big", "Opportunity is missed by most people because it is dressed in overalls and looks like work", "The only place where success comes before work is in the dictionary"]
    
    var count: Int {
        return quotes.count
    }
    
    func randomQuote() -> String {
        let randomIndex = Int(arc4random_uniform(UInt32(quotes.count)))
        let randomQuote = quotes[randomIndex]
        return randomQuote
    }
    
}