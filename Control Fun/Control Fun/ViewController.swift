//
//  ViewController.swift
//  Control Fun
//
//  Created by Павел Анплеенко on 08/07/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var nameField: UITextField!
	@IBOutlet weak var numberField: UITextField!
	@IBOutlet weak var sliderLabel: UILabel!
	
	
	//закрытие клавиатуры когда прошло касание
	@IBAction func textFieldDoneEditing(sender: UITextField) {
		sender.resignFirstResponder()
	}
	
	//закрытие цифирной клавиатуры когда прошло касание
	@IBAction func backgroundTap(sender: UIControl) {
		nameField.resignFirstResponder()
		numberField.resignFirstResponder()
	}
	
	//связываем слайдер
	@IBAction func sliderChanged(sender: UISlider) {
		//выдаем значение перездвигая ползунок округляя его до ближайщего целого значения
		let progress = lroundf(sender.value)
		//выводим значение в label
		sliderLabel.text = "\(progress)"
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}
