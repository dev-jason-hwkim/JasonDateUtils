//
//  String+Date.swift
//  JasonDateUtils
//
//  Created by Jason on 20/11/2019.
//  Copyright © 2019 Jason. All rights reserved.
//

import Foundation


extension String {
    
    // MARK: To Date
    func date(dateFormat:String, tz: TimeZone? = nil, calendar:Calendar? = nil) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateFormatter.timeZone = tz ?? .current
        dateFormatter.calendar = calendar ?? .current
        return dateFormatter.date(from: self)
    }
    
}
