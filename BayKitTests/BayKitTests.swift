//
//  BayKitTests.swift
//  BayKitTests
//
//  Created by Cem Tunçelli on 26.04.2020.
//  Copyright © 2020 Cem Tunçelli. All rights reserved.
//

import XCTest
@testable import BayKit

class BayKitTests: XCTestCase {

    var bayKit: BayKit!
    
    override func setUp() {
        bayKit = BayKit()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            _ = bayKit.offseter(scaleFactor: 1.0, offset: 24, direction: .horizontal, currentDeviceBound: DeviceList.iPhone5.screenWidth)
        }
    }
    
    func test() {
        let currentScreen = UIScreen.main.bounds
        let expectedOutput = (24 * currentScreen.width * 1.0) / DeviceList.iPhone5.screenWidth
        
        let res = bayKit.offseter(scaleFactor: 1.0, offset: 24, direction: .horizontal, currentDeviceBound: DeviceList.iPhone5.screenWidth)
        XCTAssertEqual(res, expectedOutput)
    }

}
