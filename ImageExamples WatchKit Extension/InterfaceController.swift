//
//  InterfaceController.swift
//  ImageExamples WatchKit Extension
//
//  Created by Ronald Fischer on 10/2/15.
//  Copyright (c) 2015 qpiapps. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var imageType = 0
    var messageNum = 0
    
    var grumpyMessages = ["I dare you.", "Sigh. Just sigh.", "Enough already!", "Easily entertained?", "I dare you.", "Really? Still here?", "Grrrrrrrrr"]
    var happyMessages = ["Yay!!", "Weeeee!!!", "I'm insane!", "You are too!", "Yay!", "Woohooohoo", "My smile hurts!"]
    
    @IBOutlet weak var image: WKInterfaceImage!

    @IBOutlet weak var buttonLabel: WKInterfaceButton!
    
    @IBAction func buttonHit() {
        if imageType == 0 {
            
            image.setImageNamed("HappyCat")
            imageType = 1
            
            
            buttonLabel.setTitle(happyMessages[messageNum])
            buttonLabel.setBackgroundColor(UIColor.blueColor())
            messageNum = messageNum + 1
            if messageNum >= happyMessages.count {
                messageNum = 0
            }
        } else {
            image.setImageNamed("GrumpyCat")
            buttonLabel.setTitle(grumpyMessages[messageNum])
            buttonLabel.setBackgroundColor(UIColor.redColor())
            imageType = 0
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
