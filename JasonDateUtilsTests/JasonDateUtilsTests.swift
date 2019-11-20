//
//  JasonDateUtilsTests.swift
//  JasonDateUtilsTests
//
//  Created by Jason on 20/11/2019.
//  Copyright © 2019 Jason. All rights reserved.
//

import XCTest
@testable import JasonDateUtils

class JasonDateUtilsTests: XCTestCase {
    
    private let dateFormat = Date.defaultDateFormat
    private let timeFormat = Date.defaultTimeFormat
    
    private var dateFormatter: DateFormatter!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        dateFormatter = DateFormatter()
    }
    
    
    override func tearDown() {
        super.tearDown()
        
    }
    
    // MARK: String
    func testDateString() {
        let date = Date()
        let result = date.string(dateFormat: dateFormat, tz: .current, calendar: .current)
        dateFormatter.dateFormat = dateFormat
        dateFormatter.timeZone = .current
        dateFormatter.calendar = .current
        XCTAssertEqual(result, dateFormatter.string(from: date))
        
    }
    
    func testTimeString() {
        let date = Date()
        let result = date.string(dateFormat: timeFormat, tz: .current, calendar: .current)
        dateFormatter.dateFormat = timeFormat
        dateFormatter.timeZone = .current
        dateFormatter.calendar = .current
        XCTAssertEqual(result, dateFormatter.string(from: date))
    }
    
    // MARK: Add Date
    func testAddYear() {
        let date = Date()
        let result = date.add(year: 1)!
        let components = Calendar.current.dateComponents([.year], from: date, to: result)
        XCTAssertEqual(components.year, 1)
    }
    
    func testAddMonth() {
        let date = Date()
        let result = date.add(month: 1)!
        let components = Calendar.current.dateComponents([.month], from: date, to: result)
        XCTAssertEqual(components.month, 1)
    }
    
    
    func testAddDay() {
        let date = Date()
        let result = date.add(day: 1)!
        let components = Calendar.current.dateComponents([.day], from: date, to: result)
        XCTAssertEqual(components.day, 1)
    }
    
    func testAddHour() {
        let date = Date()
        let result = date.add(hour: 1)!
        let components = Calendar.current.dateComponents([.hour], from: date, to: result)
        XCTAssertEqual(components.hour, 1)
    }
    
    func testAddMinute() {
        let date = Date()
        let result = date.add(minute: 1)!
        let components = Calendar.current.dateComponents([.minute], from: date, to: result)
        XCTAssertEqual(components.minute, 1)
    }
    
    
    
    func testAddSeconds() {
        let date = Date()
        let result = date.add(seconds: 1)!
        let components = Calendar.current.dateComponents([.second], from: date, to: result)
        XCTAssertEqual(components.second, 1)
    }
    
    
    func testComponents() {
        let date = Date()
        let components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        let result = date.components()
        
        XCTAssertEqual(components.year, result.year)
        XCTAssertEqual(components.month, result.month)
        XCTAssertEqual(components.day, result.day)
        XCTAssertEqual(components.hour, result.hour)
        XCTAssertEqual(components.minute, result.minute)
        XCTAssertEqual(components.second, result.second)
    }
    
    
    
    func testYear() {
        let date = Date()
        let components = Calendar.current.dateComponents([.year], from: date)
        let result = date.year()
        
        XCTAssertEqual(components.year, result)
    }
    
    
    func testMonth() {
        let date = Date()
        let components = Calendar.current.dateComponents([.month], from: date)
        let result = date.month()
        
        XCTAssertEqual(components.month, result)
    }
    
    
    func testDay() {
        let date = Date()
        let components = Calendar.current.dateComponents([.day], from: date)
        let result = date.day()
        
        XCTAssertEqual(components.day, result)
    }
    
    func testWeekday() {
        let date = Date()
        let components = Calendar.current.dateComponents([.weekday], from: date)
        let result = date.weekday()
        
        XCTAssertEqual(components.weekday, result)
    }
    
    
    
    func testHour() {
        let date = Date()
        let components = Calendar.current.dateComponents([.hour], from: date)
        let result = date.hour()
        
        XCTAssertEqual(components.hour, result)
    }
    
    func testMinute() {
        let date = Date()
        let components = Calendar.current.dateComponents([.minute], from: date)
        let result = date.minute()
        
        XCTAssertEqual(components.minute, result)
    }
    
    
    func testSecond() {
        let date = Date()
        let components = Calendar.current.dateComponents([.second], from: date)
        let result = date.second()
        
        XCTAssertEqual(components.second, result)
    }
    
    func testExample() {
        
        
    }
    
}
