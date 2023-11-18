//
//  ViewController.swift
//  Tip-Calculator
//
//  Created by Bahittin on 18.11.2023.
//

import UIKit

class CalculatorVC: UIViewController {

    private let logoView = LogoView()
    private let resultView = ResultView()
    private let billInputView = BillInputView()
    private let tipInputView = TipInputView()
    private let splitInputView = SplitInputView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }


}

