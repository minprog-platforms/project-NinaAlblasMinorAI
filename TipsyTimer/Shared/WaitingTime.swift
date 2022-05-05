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

//    var waitingTime: (Int, Int) {
//        // returns waiting time in (hours, mins) to wait after last drink before BAC reaches target value
        
    var waitingTime: Int {
        // returns waiting time in minutes to wait after last drink before BAC reaches target value
        
        // beginnend: BAC = 0.02
        // ervaren: BAC = 0.05
        let targetBAC = (tipsyDataStruct.userDrivingExperience == "beginnend") ? 0.02 : 0.05
        
        let metabolicRate = 15.0
        let bloodWaterPercentage = 80.65
        let passedTime = 1.5
        
        // waiting time in hours (1.89 hours)
        var waitingTimeInHours: Double = (((-(targetBAC * 1000) + ((Double(tipsyDataStruct.userConsumedAlcoholGrams) / TBW) * bloodWaterPercentage)) / metabolicRate) - (tipsyDataStruct.userDrinkingTime + passedTime))
        waitingTimeInHours = waitingTimeInHours > 0.0 ? waitingTimeInHours : 0.0
        
        // waiting time in minutes (1.89 hours * 60 mins = 113 mins)
        let waitingTimeInMinutes = Int(waitingTimeInHours * 60)
        
//        // waiting time in hours (1.89 --> 1)
//        let waitingTimeHours = floor(waitingTimeInHours)
//        
//        // waiting time in mins (1.89 --> 0.89)
//        let waitingTimeMinutes = (waitingTimeInHours - waitingTimeHours) * 60
        
//        return (Int(waitingTimeHours), Int(waitingTimeMinutes))
        
        return waitingTimeInMinutes

    }
   
}
