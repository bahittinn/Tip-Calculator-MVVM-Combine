//
//  TipInputView.swift
//  Tip-Calculator
//
//  Created by Bahittin on 18.11.2023.
//

import UIKit

class TipInputView: UIView {
    
    private let headerView: HeaderView = {
        let view = HeaderView()
        view.configure(topText: "Choose", bottomText: "your tip")
        return view
    }()
    
    private lazy var tenpercentTipButton: UIButton = {
        let button = buildTipButton(tip: .tenPercent)
        return button
    }()
    
    private lazy var fifteenpercentTipButton: UIButton = {
        let button = buildTipButton(tip: .fiftenPercent)
        return button
    }()
    
    private lazy var twentypercentTipButton: UIButton = {
        let button = buildTipButton(tip: .twentyPercent)
        return button
    }()
    
    private lazy var customTipButton: UIButton = {
        let button = UIButton()
        button.setTitle("Custom", for: .normal)
        button.titleLabel?.font = ThemeFont.bold(offSize: 20)
        button.backgroundColor = ThemeColor.primary
        button.tintColor = .white
        button.addCornerRadius(radius: 8.0)
        return button
    }()
    
    private lazy var buttonHStackView: UIStackView = {
        let stackview = UIStackView(arrangedSubviews: [
            tenpercentTipButton,
            fifteenpercentTipButton,
            twentypercentTipButton
        ])
        stackview.distribution = .fillEqually
        stackview.spacing = 16
        stackview.axis = .horizontal
        return stackview
    }()
    
    private lazy var buttonVStackView: UIStackView = {
        let stackview = UIStackView(arrangedSubviews: [
            buttonHStackView,
            customTipButton
        ])
        stackview.axis = .vertical
        stackview.spacing = 16
        stackview.distribution = .fillEqually
        return stackview
    }()
    
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        [headerView, buttonVStackView].forEach(addSubview(_:))
        
        buttonVStackView.snp.makeConstraints { make in
            make.top.bottom.trailing.equalToSuperview()
        }
        
        headerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalTo(buttonVStackView.snp.leading).offset(-24)
            make.width.equalTo(68)
            make.centerY.equalTo(buttonHStackView.snp.centerY)
        }
    }
    
    private func buildTipButton(tip: Tip) -> UIButton {
        let button = UIButton(type: .custom)
        button.backgroundColor = ThemeColor.primary
        button.addCornerRadius(radius: 8.0)
        
        let text = NSMutableAttributedString(
            string: tip.stringValue,
            attributes: [.font: ThemeFont.bold(offSize: 20),
                         .foregroundColor: UIColor.white])
        
        text.addAttributes([.font: ThemeFont.demibold(offSize: 24)], range: NSMakeRange(2, 1))
        
        button.setAttributedTitle(text, for: .normal)
        return button
    }
    
} 
