//
//  WaitingTime.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 04/05/2022.
//

import Foundation

// TODO: voor mijn waarden geeft ie bijna 8 uur op. Klopt dit?

struct CurrentUser {
    var gender: String = "female"
    var age: Int = 18
    var weight: Double = 75.0
    var height: Double = 180.0
    var alcoholConsumption: Int = 0
    var drinkingTime: Double = 0.0
    var drivingExperience: String = "beginnend"
    
    
    var TBW: Double {
        if gender == "male" {
            return 2.44 - (0.09516 * Double(age)) + (0.1074 * height) + (0.3362 *  weight)
        } else {
            return -2.097 + (0.1069 * height) + (0.2466 *  weight)
        }
    }
    
    var waitingTime: Int {
        // returns waiting time in minutes to wait after last drink before BAC reaches target value
        
        // beginnend: BAC = 0.02
        // ervaren: BAC = 0.05
        let targetBAC = (drivingExperience == "beginnend") ? 0.02 : 0.05
        
        let metabolicRate = 15.0
        let bloodWaterPercentage = 80.65
        let passedTime = 1.5
        
        // Ik kan alleen printen als het een class is??
        // IK BEN ER HIERDOOR WEL ACHTER GEKOMEN DAT DE TIPSY DATA STRUCT DINGEN NIET AANGEPAST WORDEN HIER, MAAR WEL IN RESULTVIEW
        print("Gender = \(gender)\nAge = \(age)\nExperience = \(drivingExperience)\nDrinking time = \(drinkingTime)\nAlcohol grams = \(alcoholConsumption)\nWeight = \(weight)\nHeight = \(height)")
        
        // waiting time in hours (1.89 hours)
        let waitingTimeInHours: Double = (((-(targetBAC * 1000) + ((Double(alcoholConsumption) / TBW) * bloodWaterPercentage)) / metabolicRate) - (drinkingTime + passedTime))
        
        // waiting time in minutes (1.89 hours * 60 mins = 113 mins)
        let waitingTimeInMinutes = Int(waitingTimeInHours * 60)
        
        return waitingTimeInMinutes

    }
}
