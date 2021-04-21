//
//  enimals.swift
//  paintQuestions
//
//  Created by михаил сулим on 21.04.2021.
//

import Foundation

struct Enimals {
    
    
    var enimals: Set <String> = []
    
    static func getArrayFourEnimal() -> Set<String> {
        var arrayEnimals: Set <String> = []
        while  arrayEnimals.count != 4 {
            let enimal = someEnimal.enimals.randomElement()
        arrayEnimals.insert(enimal!)
        }
        //var fourAnimals = [String]()
       // fourAnimals += arrayEnimals
        return  arrayEnimals
    }
    
    
    
}
var someEnimal = Enimals(enimals: ["Squirrel", "Wolf", "Raccoon", "Tiger", "Bear", "Fox", "Lion", "Rat", "Cat", "Dog"])


