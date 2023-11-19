//
//  HeaderView.swift
//  Tip-Calculator
//
//  Created by Bahittin on 18.11.2023.
//

import UIKit

class HeaderView: UIView {
    
    private let topLabel: UILabel = {
        LabelFactory.build(text: nil, font: ThemeFont.bold(offSize: 18))
    }()
    
    private let bottomLabel: UILabel = {
        LabelFactory.build(text: nil, font: ThemeFont.regular(offSize: 16))
    }()
    
    private let topSpacerView = UIView()
    private let bottomSpacerView = UIView()
    
    private lazy var stackView: UIStackView = {
        let stackview = UIStackView(arrangedSubviews: [
            topSpacerView,
            topLabel,
            bottomLabel,
            bottomSpacerView
        ])
        stackview.axis      = .vertical
        stackview.alignment = .leading
        stackview.spacing   = -4
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
        addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        topSpacerView.snp.makeConstraints { make in
            make.height.equalTo(bottomSpacerView)
        }
    }
    
    func configure(topText: String, bottomText: String) {
        topLabel.text    = topText
        bottomLabel.text = bottomText
    }
}
