//
//  ViewController.swift
//  Intrinsic Content
//
//  Created by kenjimaeda on 15/07/22.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
	}
	
	func setupViews() {
		let labelName = makeLabel("Name")
		let inpuText = makeInputText("Please insert your name")
		
		view.addSubview(labelName)
		view.addSubview(inpuText)
		
		NSLayoutConstraint.activate([
			
			labelName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
			labelName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),

			inpuText.leadingAnchor.constraint(equalTo: labelName.trailingAnchor,constant: 8),
			inpuText.firstBaselineAnchor.constraint(equalTo: labelName.firstBaselineAnchor),
		])
		
	}
	
	
	
	func makeLabel (_ text: String) -> UILabel {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = text
		label.font = UIFont.systemFont(ofSize: 13)
		return label
	}
	
	func makeInputText (_ text: String) -> UITextField {
		let inputText = UITextField()
		inputText.translatesAutoresizingMaskIntoConstraints = false
		inputText.placeholder = text
		inputText.backgroundColor = .gray
		return inputText
	}
	
	
}

