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
    
   static func getArrayFourEnimal() -> Set<String> {
        var arrayEnimals: Set <String> = []
        while  arrayEnimals.count != 4 {
            let enimal = someEnimal.enimals.randomElement()
        arrayEnimals.insert(enimal!)
        }
        return  arrayEnimals
    }
    
    static func getArrayFourQuetions(for typeEnimals: TypeEnimals) -> Set<String> {
        switch typeEnimals {
        case .enimal:
            func getArrayFourEnimal() -> Set<String> {
                var arrayEnimals: Set <String> = []
                while  arrayEnimals.count != 4 {
                    let enimal = someEnimal.enimals.randomElement()
                arrayEnimals.insert(enimal!)
                }
                return  arrayEnimals
            }
        case .fish:
            func getArrayFourEnimal() -> Set<String> {
                var arrayEnimals: Set <String> = []
                while  arrayEnimals.count != 4 {
                    let enimal = someFishes.enimals.randomElement()
                arrayEnimals.insert(enimal!)
                }
                return  arrayEnimals
            }
        case .birds:
            func getArrayFourEnimal() -> Set<String> {
                var arrayEnimals: Set <String> = []
                while  arrayEnimals.count != 4 {
                    let enimal = someBirds.enimals.randomElement()
                arrayEnimals.insert(enimal!)
                }
                return  arrayEnimals
            }
        }
        return getArrayFourEnimal()
    }
    
    
    
}
var someEnimal = Enimals(enimals: ["Squirrel", "Wolf", "Raccoon", "Tiger", "Bear", "Fox", "Lion", "Rat", "Cat", "Dog", "Jiraffe"])
var someFishes = Enimals(fishes: ["Pike", "Goldfish", "Shark", "Carp", "Perch", "Salmon", "Tuna", "Catfish"])
var someBirds = Enimals(birds: ["Swallow", "Parrot", "Duck", "Flamingo", "Ostrich", "Swan"])

enum TypeEnimals: CaseIterable {
    case enimal
    case fish
    case birds
}

func typeEnimalString(for type: TypeEnimals) -> String {
    switch type {
    case .enimal:
        return "Enimals"
    case .fish:
        return "Fishes"
    case .birds:
        return "Birds"
    }
}







