//
//  RandomNumber.swift
//  Randomizer
//
//  Created by Роман Козловский on 23.03.2023.
//

import Foundation

struct RandomNumber {
    var minimumValue: Int
    var maximumValue: Int
    
    var getRandom: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
