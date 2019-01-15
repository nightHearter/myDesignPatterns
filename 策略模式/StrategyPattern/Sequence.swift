//
//  Sequence.swift
//  StrategyPattern
//
//  Created by 张一奇 on 2019/1/15.
//  Copyright © 2019年 张一奇. All rights reserved.
//

final class Sequence {
    
    private var numbers: [Int]
    
    init(_ numbers:Int...) {
        self.numbers = numbers
    }
    
    func addNUmber(value: Int) {
        
        numbers.append(value)
    }
    
    func compute(strategy: Strategy) -> Int {
        
        return strategy.execute(values: numbers)
    }
    
}
