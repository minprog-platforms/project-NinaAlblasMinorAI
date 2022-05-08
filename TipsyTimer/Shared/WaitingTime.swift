//
//  WaitingTime.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 04/05/2022.
//

import Foundation

// data meegeven aan dit struct?
struct currentUser {
    
    var TBW: Double {
        if tipsyDataClass.userGender == "male" {
            return 2.44 - (0.09516 * Double(tipsyDataClass.userAge)) + (0.1074 * tipsyDataClass.userHeight) + (0.3362 *  tipsyDataClass.userWeight)
        } else {
            return -2.097 + (0.1069 * tipsyDataClass.userHeight) + (0.2466 *  tipsyDataClass.userWeight)
        }
    }
        
    var waitingTime: Int {
        // returns waiting time in minutes to wait after last drink before BAC reaches target value
        
//        // beginnend: BAC = 0.02
//        // ervaren: BAC = 0.05
//        let targetBAC = (tipsyDataClass.userDrivingExperience == "beginnend") ? 0.02 : 0.05
        
        // beginnend: BAC = 20
        // ervaren: BAC = 50
        let targetBAC = (tipsyDataClass.userDrivingExperience == "beginnend") ? 20.0 : 50.0
        
        let metabolicRate = 15.0
        let bloodWaterPercentage = 80.65
//        let passedTime = 1.5
        
        // waiting time in hours (1.89 hours)
//        let waitingTimeInHours: Double = (((-(targetBAC * 1000) + ((Double(tipsyDataClass.userConsumedAlcoholGrams) / TBW) * bloodWaterPercentage)) / metabolicRate) - (tipsyDataClass.userDrinkingTime + passedTime))
        
        // IK BEN ER HIERDOOR ACHTER GEKOMEN DAT DE TIPSY DATA STRUCT DINGEN NIET AANGEPAST WORDEN HIER, MAAR WEL IN RESULTVIEW
        print("Target BAC: \(targetBAC)\nTBW: \(TBW)\nDrinking time: \(tipsyDataClass.userDrinkingTime)\nAlcohol grams = \(tipsyDataClass.userConsumedAlcoholGrams)\nWeight = \(tipsyDataClass.userWeight)\nHeight = \(tipsyDataClass.userHeight)\nbloodWaterPercentage: \(bloodWaterPercentage)\nmetabolicRate: \(metabolicRate)")
        
        // tijd na het laatste drankje
        let waitingTimeInHours: Double = ((           (-(targetBAC) + (          (Double(tipsyDataClass.userConsumedAlcoholGrams) / TBW)           * bloodWaterPercentage))             / metabolicRate) - (tipsyDataClass.userDrinkingTime))
        
        // waiting time in minutes (1.89 hours * 60 mins = 113 mins)
        let waitingTimeInMinutes = Int(waitingTimeInHours * 60)
        
        print("Waiting time in hours: \(waitingTimeInHours)\nWaiting time in minutes: \(waitingTimeInMinutes)")
        
        
        return waitingTimeInMinutes
        
    }
   
}
