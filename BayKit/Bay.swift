//
//  Bay.swift
//  BayKit
//
//  Created by Cem Tunçelli on 26.04.2020.
//  Copyright © 2020 Cem Tunçelli. All rights reserved.
//

import UIKit


public struct DeviceList {
    struct iPhone5 {
        static let screenWidth: CGFloat = 320
        static let screenHeight: CGFloat = 568
    }
    
    struct iPhoneSE {
        static let screenWidth: CGFloat = 320
        static let screenHeight: CGFloat = 568
    }
    
    struct iPhone5c {
        static let screenWidth: CGFloat = 320
        static let screenHeight: CGFloat = 568
    }
    
    struct iPhone6 {
        static let screenWidth: CGFloat = 375
        static let screenHeight: CGFloat = 667
    }
    
    struct iPhone6Plus {
        static let screenWidth: CGFloat = 414
        static let screenHeight: CGFloat = 736
    }
    
    struct iPhone6s {
        static let screenWidth: CGFloat = 375
        static let screenHeight: CGFloat = 667
    }
    
    struct iPhone6sPlus {
        static let screenWidth: CGFloat = 414
        static let screenHeight: CGFloat = 736
    }
    
    struct iPhone7 {
        static let screenWidth: CGFloat = 375
        static let screenHeight: CGFloat = 667
    }
    
    struct iPhone7Plus {
        static let screenWidth: CGFloat = 414
        static let screenHeight: CGFloat = 736
    }
    
    struct iPhone8 {
        static let screenWidth: CGFloat = 375
        static let screenHeight: CGFloat = 667
    }
    
    struct iPhone8Plus {
        static let screenWidth: CGFloat = 414
        static let screenHeight: CGFloat = 736
    }
    
    struct iPhoneX {
        static let screenWidth: CGFloat = 375
        static let screenHeight: CGFloat = 812
    }
    
    struct iPhoneXS {
        static let screenWidth: CGFloat = 375
        static let screenHeight: CGFloat = 812
    }
    
    struct iPhoneXSMax {
        static let screenWidth: CGFloat = 414
        static let screenHeight: CGFloat = 896
    }
    
    struct iPhoneXR {
        static let screenWidth: CGFloat = 414
        static let screenHeight: CGFloat = 896
    }
    
    struct iPhone11 {
        static let screenWidth: CGFloat = 414
        static let screenHeight: CGFloat = 896
    }
    
    struct iPhone11Pro {
        static let screenWidth: CGFloat = 375
        static let screenHeight: CGFloat = 812
    }
    
    struct iPhone11ProMax {
        static let screenWidth: CGFloat = 414
        static let screenHeight: CGFloat = 896
    }
}

public class BayKit {
    public enum Direction {
        case horizontal, vertical
    }
    
    public init() {}
    
    public func offseter(scaleFactor: CGFloat, offset: CGFloat, direction: Direction, currentDeviceBound: CGFloat) -> CGFloat {
        switch direction {
        case .horizontal:
            return (offset * UIScreen.main.bounds.width * scaleFactor) / currentDeviceBound
        case .vertical:
            return (offset * UIScreen.main.bounds.height * scaleFactor) / currentDeviceBound
        }
    }
}
