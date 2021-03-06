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
    var fruits: Set <String> = []
    var flowers: Set <String> = []
    
   /*static func getArrayFourEnimal() -> Set<String> {
        var arrayEnimals: Set <String> = []
        while  arrayEnimals.count != 4 {
            let enimal = someEnimal.enimals.randomElement()
        arrayEnimals.insert(enimal!)
        }
        return  arrayEnimals
    }*/
    
    
    static func getArrayFourQuetions(for typeEnimals: TypeEnimals) -> Set <String> {
        var arrayEnimals: Set <String> = []
        switch typeEnimals {
        case .enimal:
                while  arrayEnimals.count != 4 {
                    let enimal = someEnimal.enimals.randomElement()
                arrayEnimals.insert(enimal!)
                }
                return  arrayEnimals
        case .fish:
                while  arrayEnimals.count != 4 {
                    let enimal = someFishes.fishes.randomElement()
                arrayEnimals.insert(enimal!)
                }
                return  arrayEnimals
        case .birds:
                while  arrayEnimals.count != 4 {
                    let enimal = someBirds.birds.randomElement()
                arrayEnimals.insert(enimal!)
                }
                return  arrayEnimals
        case .fruits:
            while  arrayEnimals.count != 4 {
                let enimal = someFruits.fruits.randomElement()
            arrayEnimals.insert(enimal!)
            }
            return  arrayEnimals
        case .flowers:
            while  arrayEnimals.count != 4 {
                let enimal = someFlowers.flowers.randomElement()
            arrayEnimals.insert(enimal!)
            }
            return  arrayEnimals
        }
    }
    
    
    
}
var someEnimal = Enimals(enimals: ["Squirrel", "Wolf", "Raccoon", "Tiger", "Bear", "Fox", "Lion", "Rat", "Cat", "Dog", "Jiraffe"])
var someFishes = Enimals(fishes: ["Pike", "Goldfish", "Shark", "Carp", "Perch", "Salmon", "Tuna", "Catfish"])
var someBirds = Enimals(birds: ["Swallow", "Parrot", "Duck", "Flamingo", "Ostrich", "Swan"])
var someFruits = Enimals(fruits: ["Avocado", "Apple", "Strawberry", "Kiwi"    ])
var someFlowers = Enimals(flowers: [ "Rose",  "Lily", "Gerbera", "Chrysanthemum"])


enum TypeEnimals: CaseIterable {
    case enimal
    case fish
    case birds
    case fruits
    case flowers
}

func typeEnimalString(for type: TypeEnimals) -> String {
    switch type {
    case .enimal:
        return "ENIMAL"
    case .fish:
        return "FISH"
    case .birds:
        return "BIRD"
    case .fruits:
        return "FRUIT"
    case .flowers:
        return "FLOWER"
        
    }
}







