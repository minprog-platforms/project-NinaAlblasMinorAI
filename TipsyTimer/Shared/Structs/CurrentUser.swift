//
//  CurrentUser.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 04/05/2022.
//

import Foundation

/*
 Stores the current user's data and computes their total body water volume and the amount of minutes they need to wait to reach the target BAC.
 
 Equations are derived and algebraically rearranged from Brick, J. (2006). Standardization of alcohol calculations in research. Alcoholism: Clinical and experimental research, 30(8), 1276-1287.
 */
struct CurrentUser {
    var gender: Gender = .female
    var age: Double = 18.0
    var weight: Double = 75.0
    var height: Double = 180.0
    var alcoholConsumption: Double = 0.0
    var drinkingTime: Double = 0.0
    var drivingExperience: DrivingExperience = .starting
    
    var totalBodyWater: Double {
        if gender == .male {
            return 2.44 - (0.09516 * age) + (0.1074 * height) + (0.3362 *  weight)
        } else {
            return -2.097 + (0.1069 * height) + (0.2466 *  weight)
        }
    }
    
    var waitingTime: Int {
        let targetBAC = (drivingExperience == .starting) ? 20.0 : 50.0
        let metabolicRate = 15.0
        let bloodWaterPercentage = 80.65
                
        // calculate waiting time after last drink before target BAC is reached
        let waitingTimeInHours: Double = (((((alcoholConsumption / totalBodyWater) * bloodWaterPercentage) - targetBAC) / metabolicRate) - drinkingTime)
        let waitingTimeInMinutes = Int(waitingTimeInHours * 60)
        
        return waitingTimeInMinutes
    }
}
