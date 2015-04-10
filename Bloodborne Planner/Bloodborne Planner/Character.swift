
//
//  Character.swift
//  Bloodborne Planner
//
//  Created by Connor on 4/9/15.
//  Copyright (c) 2015 Sawaske. All rights reserved.
//

import Foundation

class Character {
    
    var name: String
    var gender: String
    var levelData: [Int16] // level, vitality, endurance, strength, skill, bloodtinge, arcane
    var basicStats: [Int16] // HP, stamina, discovery
    var attackStats: [Int16] // rHand1, rHand2, lHand1, lHand2
    var defenseStats: [Int16] // physical, slowP, rapidP, frenzy, beasthood
    
    init(entryName: String, entryGender: String, charType: String) {
        name = entryName
        gender = entryGender
        switch charType {
        case "Milquetoast":
            levelData = [10, 11, 10, 12, 10, 9, 8]
        case "Lone Survivor":
            levelData = [10, 14, 11, 11, 10, 7, 7]
        case "Troubled Childhood":
            levelData = [10, 9, 14, 9, 13, 6, 9]
        case "Violent Past":
            levelData = [10, 12, 11, 15, 9, 6, 7]
        case "Professional":
            levelData = [10, 9, 12, 9, 15, 7, 8]
        case "Military Veteran":
            levelData = [10, 10, 10, 14, 13, 7, 6]
        case "Noble Scion":
            levelData = [10, 7, 8, 9, 13, 14, 9]
        case "Cruel Fate":
            levelData = [10, 10, 12, 10, 9, 5, 14]
        case "Waste of Skin":
            levelData = [4, 10, 9, 10, 9, 7, 9]
        default:
            levelData = []
        }
        basicStats = []
        attackStats = []
        defenseStats = []

    }
}