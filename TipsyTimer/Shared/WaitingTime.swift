//
//  WaitingTime.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 04/05/2022.
//

import Foundation

struct currentUser {
    var TBW: Double {
        if tipsyDataStruct.userGender == "male" {
            return 2.44 - (0.09516 * Double(tipsyDataStruct.userAge)) + (0.1074 * tipsyDataStruct.userHeight) + (0.3362 *  tipsyDataStruct.userWeight)
        } else {
            return -2.097 + (0.1069 * tipsyDataStruct.userHeight) + (0.2466 *  tipsyDataStruct.userWeight)
        }
    }

    var waitingTime: Double {
        // returns waiting time in hours to wait after last drink before BAC reaches target value
        
        // beginnend: BAC = 0.02
        // ervaren: BAC = 0.05
        let targetBAC = (tipsyDataStruct.userDrivingExperience == "beginnend") ? 0.02 : 0.05
        
        let metabolicRate = 15.0
        let bloodWaterPercentage = 80.65
        let passedTime = 1.5
        
        let waitingTimeHours = ((-(targetBAC * 1000) + ((Double(tipsyDataStruct.userConsumedAlcoholGrams) / TBW) * bloodWaterPercentage)) / metabolicRate) - (tipsyDataStruct.userDrinkingTime + passedTime)
        
        let waitingTime = waitingTimeHours * 60

        return waitingTime > 0.0 ? waitingTime : 0.0
    }
   
}
