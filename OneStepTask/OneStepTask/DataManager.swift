//
//  DataManager.swift
//  OneStepTask
//
//  Created by wala janajreh on 03/08/2021.
//

import Foundation
class DataManager {
    static let shared = DataManager()
    var heyName = "Hey"
    var greeting = ""
    func greetingLogic()->String {
            let date = NSDate()
            let calendar = NSCalendar.current
            let currentHour = calendar.component(.hour, from: date as Date)
            let hourInt = Int(currentHour.description)!

            if hourInt >= 12 && hourInt <= 17 {
                greeting = "Good Afternoon,dads"
            }
            else if hourInt >= 5 && hourInt <= 12 {
                greeting = "Good Morning, dads"
            }
            else if hourInt >= 17 && hourInt <= 24 || hourInt >= 0 && hourInt <= 5 {
                greeting = "Good Evening, dads"
            }
           return greeting
        }
}
