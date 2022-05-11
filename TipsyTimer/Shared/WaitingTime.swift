//
//  WaitingTime.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 04/05/2022.
//

import Foundation

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
        // IGNORES PASSED TIME (TIME TO REACH PEAK), SO IT'S THE WAITING TIME AFTER CONSUMING THE LAST DRINK!
        

        let targetBAC = (drivingExperience == "beginnend") ? 20.0 : 50.0
        
        let metabolicRate = 15.0
        let bloodWaterPercentage = 80.65
        
        print("Target BAC: \(targetBAC)\nTBW: \(TBW)\nDrinking time: \(drinkingTime)\nAlcohol grams = \(alcoholConsumption)\nWeight = \(weight)\nHeight = \(height)\nbloodWaterPercentage: \(bloodWaterPercentage)\nmetabolicRate: \(metabolicRate)")
        
        // waiting time in hours (1.89 hours)
        let waitingTimeInHours: Double = (((-targetBAC + ((Double(alcoholConsumption) / TBW) * bloodWaterPercentage)) / metabolicRate) - drinkingTime)
        
        // waiting time in minutes (1.89 hours * 60 mins = 113 mins)
        let waitingTimeInMinutes = Int(waitingTimeInHours * 60)
        
        print("Hours: \(waitingTimeInHours)\nMinutes: \(waitingTimeInMinutes)")
        
        return waitingTimeInMinutes

    }
}
