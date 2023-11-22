//
//  CalculatorVM.swift
//  Tip-Calculator
//
//  Created by Bahittin on 19.11.2023.
//

import Foundation
import Combine

class CalculatorVM {
    
    struct Input {
        let billPublisher: AnyPublisher<Double, Never>
        let tipPublisher: AnyPublisher<Tip, Never>
        let splitPublisher: AnyPublisher<Int, Never>
        
    }
    
    private var cancellables = Set<AnyCancellable>()
    
    struct Output {
        let updateViewPublisher: AnyPublisher<Result, Never>
    }
    
    func transform(input: Input) -> Output {
 
        let result = Result(amounthPerPerson: 500,
                            totalBill: 1000,
                            totalTip: 50.0)
        
        return Output(updateViewPublisher: Just(result).eraseToAnyPublisher())
    }
    
}
