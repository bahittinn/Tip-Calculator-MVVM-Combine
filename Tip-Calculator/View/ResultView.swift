//
//  ResultView.swift
//  Tip-Calculator
//
//  Created by Bahittin on 18.11.2023.
//

import UIKit

class ResultView: UIView {
    
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        backgroundColor = .gray
    }
}
