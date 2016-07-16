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
	@IBOutlet weak var leftSwitch: UISwitch!
	@IBOutlet weak var rightSwitch: UISwitch!	
	@IBOutlet weak var doSomethingButton: UISegmentedControl!
	
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
	
	@IBAction func switchChanged(sender: UISwitch) {
		//переменная кнопка включенна
		let setting = sender.on
		//левый и правый switch по умолчанию включен если
		leftSwitch.setOn(setting, animated: true)
		rightSwitch.setOn(setting, animated: true)
		doSomethingButton.hidden = false
	}
	
	
	@IBAction func toggleControls(sender: UISegmentedControl) {
		//нажатие на сименты контролера
		if sender.selectedSegmentIndex == 0 {
			leftSwitch.hidden = false
			rightSwitch.hidden = false
			doSomethingButton.hidden = true
		} else {
			leftSwitch.hidden = true 
			rightSwitch.hidden = true
			doSomethingButton.hidden = false
		}
	}
	
	// алерт по нажитию на button
	@IBAction func buttonPressed(sender: UIButton){
		//создаем алерт
		let controller = UIAlertController(title: "You are Sure?", message: nil , preferredStyle: .ActionSheet)
		//создаю кнопку true
		let yesAction = UIAlertAction(title: "Yes, I'm sure!", style: .Destructive, handler: { action in
			//создаю проверку наличие текст в инпуте в зависимости от этого отображается текст
			let msg = self.nameField.text!.isEmpty ? "You can breathe easy, everything went OK." : "You can breathe easy, \(self.nameField.text)," + " everything went OK."
			//новый алерт контролер
			let controller2 = UIAlertController(title:"Something Was Done",message: msg, preferredStyle: .Alert)
			//кнопка отмены для первого алерт контролера
			let cancelAction = UIAlertAction(title: "Cancel",style: .Cancel, handler: nil)
			//отображения кнопки в контролере
			controller2.addAction(cancelAction); self.presentViewController(controller2, animated: true, completion: nil)
		})
		//кнопка отмены для первого алерт контролера
		let noAction = UIAlertAction(title: "No way!", style: .Cancel, handler: nil)
		//отображения кнопки в контролере
		controller.addAction(yesAction); self.presentViewController(controller, animated: true, completion: nil)
		controller.addAction(noAction)
		
		//сделать предупреждение видимым
		if let ppc = controller.popoverPresentationController {
			ppc.sourceView = sender
			ppc.sourceRect = sender.bounds
		}
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
