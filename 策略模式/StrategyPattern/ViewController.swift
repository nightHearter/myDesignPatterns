//
//  ViewController.swift
//  StrategyPattern
//
//  Created by 张一奇 on 2019/1/15.
//  Copyright © 2019年 张一奇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        execute()
    }
    
    func execute() {
        
        let sequence = Sequence(1, 2, 3, 4)
        sequence.addNUmber(value: 10)
        sequence.addNUmber(value: 20)
        
        let sumStrategy = SumStrategy()
        let multiplyStrategy = MultiplyStrategy()
        
        let sum = sequence.compute(strategy: sumStrategy)
        print("sum:", sum)
        
        let multiply = sequence.compute(strategy: multiplyStrategy)
        print("multiply:", multiply)
        
        let filterThreshold = 10
        let cstrategy = ClosureStrategy({values in
            return values.filter({$0 < filterThreshold}).reduce(0, {$0 + $1})
        });
        let filteredSum = sequence.compute(strategy: cstrategy)
        print("filteredSum:", filteredSum)
    }
}

