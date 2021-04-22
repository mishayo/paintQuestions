//
//  enimals.swift
//  paintQuestions
//
//  Created by михаил сулим on 21.04.2021.
//

import Foundation

struct Enimals {
    
    
    var enimals: Set <String> = []
    var fishes: Set <String> = []
    var birds: Set <String> = []
    
    static func getArrayFourQuetions(for typeEnimals: typeEnimals) {
        switch typeEnimals {
        case .enimal:
            <#code#>
        case .fish:
            <#code#>
        case .birds:
            <#code#>
        }
    }
    
    
    
}
var someEnimal = Enimals(enimals: ["Squirrel", "Wolf", "Raccoon", "Tiger", "Bear", "Fox", "Lion", "Rat", "Cat", "Dog", "Jiraffe"])
var someFishes = Enimals(fishes: ["Pike", "Goldfish", "Shark", "Carp", "Perch", "Salmon", "Tuna", "Catfish"])
var someBirds = Enimals(birds: ["Swallow", "Parrot", "Duck", "Flamingo", "Ostrich", "Swan"])

enum typeEnimals {
    case enimal
    case fish
    case birds
}



func getArrayFourEnimal() -> Set<String> {
    var arrayEnimals: Set <String> = []
    while  arrayEnimals.count != 4 {
        let enimal = someEnimal.enimals.randomElement()
    arrayEnimals.insert(enimal!)
    }
    return  arrayEnimals
}

func getArrayFourEnimal() -> Set<String> {
    var arrayEnimals: Set <String> = []
    while  arrayEnimals.count != 4 {
        let enimal = someEnimal.enimals.randomElement()
    arrayEnimals.insert(enimal!)
    }
    return  arrayEnimals
}


