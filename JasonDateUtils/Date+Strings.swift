//
//  Date+Strings.swift
//  JasonDateUtils
//
//  Created by Jason on 20/11/2019.
//  Copyright © 2019 Jason. All rights reserved.
//

import Foundation

extension Date {
    
    public static let defaultDateFormat = "yyyy-MM-dd"
    public static let defaultTimeFormat = "HH:mm:ss"
    
    
    
    // MARK: String
    func string(dateFormat:String, tz:TimeZone? = nil, calendar:Calendar? = nil) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateFormatter.timeZone = tz ?? .current
        dateFormatter.calendar = calendar ?? .current
        
        return dateFormatter.string(from: self)
    }
    
    
    func string(dateFormat:String, abbreviation: String) -> String {
        let timeZone = TimeZone(abbreviation: abbreviation)
        return self.string(dateFormat: dateFormat, tz:timeZone)
    }
    
    
    // MARK: Add Date
    func add(year: Int) -> Date? {
        return Calendar.current.date(byAdding: .year, value: year, to: self)
    }
    
    func add(month: Int) -> Date? {
        return Calendar.current.date(byAdding: .month, value: month, to: self)
    }
    
    
    func add(day: Int) -> Date? {
        return Calendar.current.date(byAdding: .day, value: day, to: self)
    }
    
    func add(hour: Int) -> Date? {
        return Calendar.current.date(byAdding: .hour, value: hour, to: self)
    }
    
    
    func add(minute: Int) -> Date? {
        return Calendar.current.date(byAdding: .minute, value: minute, to: self)
    }
    
    
    func add(seconds: Int) -> Date? {
        return Calendar.current.date(byAdding: .second, value: seconds, to: self)
    }
    
    
    
    
    // MARK: -  DateComponents
    func components(calendar:Calendar? = nil, tz:TimeZone? = nil) -> DateComponents {
        let cal = calendar ?? .current
        return cal.dateComponents(in: tz ?? .current, from: self)
    }
    
    func year(calendar:Calendar? = nil, tz:TimeZone? = nil) -> Int? {
        return self.components(calendar: calendar, tz: tz).year
    }

    func month(calendar:Calendar? = nil, tz:TimeZone? = nil) -> Int? {
        return self.components(calendar: calendar, tz: tz).month
    }
    
    func day(calendar:Calendar? = nil, tz:TimeZone? = nil) -> Int? {
        return self.components(calendar: calendar, tz: tz).day
    }
    
    func weekday(calendar:Calendar? = nil, tz:TimeZone? = nil) -> Int? {
         return self.components(calendar: calendar, tz: tz).weekday
     }
    
    func hour(calendar:Calendar? = nil, tz:TimeZone? = nil) -> Int? {
         return self.components(calendar: calendar, tz: tz).hour
     }
    
    func minute(calendar:Calendar? = nil, tz:TimeZone? = nil) -> Int? {
        return self.components(calendar: calendar, tz: tz).minute
    }
    
    func second(calendar:Calendar? = nil, tz:TimeZone? = nil) -> Int? {
        return self.components(calendar: calendar, tz: tz).second
    }
    
    
}
