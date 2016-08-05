//
//  BlueViewController.swift
//  View Switcher
//
//  Created by Павел Анплеенко on 21/07/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	@IBAction func blueButtonPressed(sender: UIButton) {
		
		let blueAlert = UIAlertController(title: "Blue View Button Pressed", message: "You pressed the button on the blue view", preferredStyle: .Alert)
		let yesButton = UIAlertAction(title: "Yep, I did", style: .Destructive, handler: nil)
		let noButton = UIAlertAction(title: "Yep, I did't", style: .Destructive, handler: nil)
		blueAlert.addAction(yesButton)
		blueAlert.addAction(noButton)
		presentViewController(blueAlert, animated: true, completion: nil)
		
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
