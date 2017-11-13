//
//  Operators.swift
//  SWUtils
//
//  Created by mhtran on 11/13/17.
//  Copyright © 2017 mhtran. All rights reserved.
//
import Foundation

public typealias SWInt     = NSNumber
public typealias SWFloat   = NSNumber
public typealias SWDouble  = NSNumber
public typealias NUM       = NSNumber

// MARK: - Number operations

public func %(left: Float, right: Float) -> Float {
    return left.truncatingRemainder(dividingBy: right)
}

public func %(left: Double, right: Double) -> Double {
    return left.truncatingRemainder(dividingBy: right)
}

public func %(left: Float, right: Double) -> Double {
    return Double(left).truncatingRemainder(dividingBy: right)
}

public func %(left: Double, right: Float) -> Double {
    return left.truncatingRemainder(dividingBy: Double(right))
}

public func %(left: Int, right: Double) -> Double {
    return Double(left).truncatingRemainder(dividingBy: right)
}

public func %(left: Double, right: Int) -> Double {
    return left.truncatingRemainder(dividingBy: Double(right))
}

public func %(left: Int, right: Float) -> Float {
    return Float(left).truncatingRemainder(dividingBy: right)
}

public func %(left: Float, right: Int) -> Float {
    return left.truncatingRemainder(dividingBy: Float(right))
}

public func ceilToInt(_ val: Float) -> Int {
    return Int(ceilf(val))
}

public func ceilToInt(_ val: Double) -> Int {
    return Int(ceil(val))
}

public func floorToInt(_ val: Float) -> Int {
    return Int(floorf(val))
}

public func floorToInt(_ val: Double) -> Int {
    return Int(floor(val))
}

public func roundToInt(_ val: Float) -> Int {
    return Int(roundf(val))
}

public func roundToInt(_ val: Double) -> Int {
    return Int(round(val))
}

// MARK: - NSNumber operations

public func +(left: NSNumber, right: Int) -> NSNumber {
    return NSNumber(value: left.intValue + right)
}

public func +(left: Int, right: NSNumber) -> Int {
    return left + right.intValue
}

public func -(left: NSNumber, right: Int) -> NSNumber {
    return NSNumber(value: left.intValue - right)
}

public func -(left: Int, right: NSNumber) -> Int {
    return left - right.intValue
}

public func *(left: NSNumber, right: Int) -> NSNumber {
    return NSNumber(value: left.intValue * right)
}

public func *(left: Int, right: NSNumber) -> Int {
    return left * right.intValue
}

public func /(left: NSNumber, right: Int) -> NSNumber {
    return NSNumber(value: left.intValue / right)
}

public func /(left: Int, right: NSNumber) -> Int {
    return left / right.intValue
}

public func %(left: NSNumber, right: Int) -> NSNumber {
    return NSNumber(value: left.intValue % right)
}

public func %(left: Int, right: NSNumber) -> Int {
    return left % right.intValue
}

public func +=(left: inout NSNumber, right: Int) {
    left = NSNumber(value: left.intValue + right)
}

public func +=(left: inout Int, right: NSNumber) {
    left = left + right.intValue
}

public func -=(left: inout NSNumber, right: Int) {
    left = NSNumber(value: left.intValue - right)
}

public func -(left: inout Int, right: NSNumber) {
    left = left - right.intValue
}

public func *(left: inout NSNumber, right: Int) {
    left = NSNumber(value: left.intValue * right)
}

public func *(left: inout Int, right: NSNumber) {
    left = left * right.intValue
}

public func /(left: inout NSNumber, right: Int) {
    left = NSNumber(value: left.intValue / right)
}

public func /(left: inout Int, right: NSNumber) {
    left = left / right.intValue
}

public func +(left: NSNumber, right: Float) -> NSNumber {
    return NSNumber(value: left.floatValue + right)
}

public func +(left: Float, right: NSNumber) -> Float {
    return left + right.floatValue
}

public func -(left: NSNumber, right: Float) -> NSNumber {
    return NSNumber(value: left.floatValue - right)
}

public func -(left: Float, right: NSNumber) -> Float {
    return left - right.floatValue
}

public func *(left: NSNumber, right: Float) -> NSNumber {
    return NSNumber(value: left.floatValue * right)
}

public func *(left: Float, right: NSNumber) -> Float {
    return left * right.floatValue
}

public func /(left: NSNumber, right: Float) -> NSNumber {
    return NSNumber(value: left.floatValue / right)
}

public func /(left: Float, right: NSNumber) -> Float {
    return left / right.floatValue
}

public func %(left: NSNumber, right: Float) -> NSNumber {
    return NSNumber(value: left.floatValue % right)
}

public func %(left: Float, right: NSNumber) -> Float {
    return left % right.floatValue
}

public func +=(left: inout NSNumber, right: Float) {
    left = NSNumber(value: left.floatValue + right)
}

public func +=(left: inout Float, right: NSNumber) {
    left = left + right.floatValue
}

public func -=(left: inout NSNumber, right: Float) {
    left = NSNumber(value: left.floatValue - right)
}

public func -(left: inout Float, right: NSNumber) {
    left = left - right.floatValue
}

public func *(left: inout NSNumber, right: Float) {
    left = NSNumber(value: left.floatValue * right)
}

public func *(left: inout Float, right: NSNumber) {
    left = left * right.floatValue
}

public func /(left: inout NSNumber, right: Float) {
    left = NSNumber(value: left.floatValue / right)
}

public func /(left: inout Float, right: NSNumber) {
    left = left / right.floatValue
}

public func +(left: NSNumber, right: Double) -> NSNumber {
    return NSNumber(value: left.doubleValue + right)
}

public func +(left: Double, right: NSNumber) -> Double {
    return left + right.doubleValue
}

public func -(left: NSNumber, right: Double) -> NSNumber {
    return NSNumber(value: left.doubleValue - right)
}

public func -(left: Double, right: NSNumber) -> Double {
    return left - right.doubleValue
}

public func *(left: NSNumber, right: Double) -> NSNumber {
    return NSNumber(value: left.doubleValue * right)
}

public func *(left: Double, right: NSNumber) -> Double {
    return left * right.doubleValue
}

public func /(left: NSNumber, right: Double) -> NSNumber {
    return NSNumber(value: left.doubleValue / right)
}

public func /(left: Double, right: NSNumber) -> Double {
    return left / right.doubleValue
}

public func %(left: NSNumber, right: Double) -> NSNumber {
    return NSNumber(value: left.doubleValue % right)
}

public func %(left: Double, right: NSNumber) -> Double {
    return left % right.doubleValue
}

public func +=(left: inout NSNumber, right: Double) {
    left = NSNumber(value: left.doubleValue + right)
}

public func +=(left: inout Double, right: NSNumber) {
    left = left + right.doubleValue
}

public func -=(left: inout NSNumber, right: Double) {
    left = NSNumber(value: left.doubleValue - right)
}

public func -(left: inout Double, right: NSNumber) {
    left = left - right.doubleValue
}

public func *(left: inout NSNumber, right: Double) {
    left = NSNumber(value: left.doubleValue * right)
}

public func *(left: inout Double, right: NSNumber) {
    left = left * right.doubleValue
}

public func /(left: inout NSNumber, right: Double) {
    left = NSNumber(value: left.doubleValue / right)
}

public func /(left: inout Double, right: NSNumber) {
    left = left / right.doubleValue
}

// MARK: - NSNumber comparison

public func ==(left: NSNumber, right: Int) -> Bool {
    return left.intValue == right
}

public func !=(left: NSNumber, right: Int) -> Bool {
    return left.intValue != right
}

public func <(left: NSNumber, right: Int) -> Bool {
    return left.intValue < right
}

public func <=(left: NSNumber, right: Int) -> Bool {
    return left.intValue <= right
}

public func >(left: NSNumber, right: Int) -> Bool {
    return left.intValue > right
}

public func >=(left: NSNumber, right: Int) -> Bool {
    return left.intValue >= right
}

public func ==(left: Int, right: NSNumber) -> Bool {
    return left == right.intValue
}

public func !=(left: Int, right: NSNumber) -> Bool {
    return left != right.intValue
}

public func <(left: Int, right: NSNumber) -> Bool {
    return left < right.intValue
}

public func <=(left: Int, right: NSNumber) -> Bool {
    return left <= right.intValue
}

public func >(left: Int, right: NSNumber) -> Bool {
    return left > right.intValue
}

public func >=(left: Int, right: NSNumber) -> Bool {
    return left >= right.intValue
}

public func ==(left: NSNumber, right: Double) -> Bool {
    return left.doubleValue == right
}

public func !=(left: NSNumber, right: Double) -> Bool {
    return left.doubleValue != right
}

public func <(left: NSNumber, right: Double) -> Bool {
    return left.doubleValue < right
}

public func <=(left: NSNumber, right: Double) -> Bool {
    return left.doubleValue <= right
}

public func >(left: NSNumber, right: Double) -> Bool {
    return left.doubleValue > right
}

public func >=(left: NSNumber, right: Double) -> Bool {
    return left.doubleValue >= right
}

public func ==(left: Double, right: NSNumber) -> Bool {
    return left == right.doubleValue
}

public func !=(left: Double, right: NSNumber) -> Bool {
    return left != right.doubleValue
}

public func <(left: Double, right: NSNumber) -> Bool {
    return left < right.doubleValue
}

public func <=(left: Double, right: NSNumber) -> Bool {
    return left <= right.doubleValue
}

public func >(left: Double, right: NSNumber) -> Bool {
    return left > right.doubleValue
}

public func >=(left: Double, right: NSNumber) -> Bool {
    return left >= right.doubleValue
}

public func ==(left: NSNumber, right: Float) -> Bool {
    return left.floatValue == right
}

public func !=(left: NSNumber, right: Float) -> Bool {
    return left.floatValue != right
}

public func <(left: NSNumber, right: Float) -> Bool {
    return left.floatValue < right
}

public func <=(left: NSNumber, right: Float) -> Bool {
    return left.floatValue <= right
}

public func >(left: NSNumber, right: Float) -> Bool {
    return left.floatValue > right
}

public func >=(left: NSNumber, right: Float) -> Bool {
    return left.floatValue >= right
}

public func ==(left: Float, right: NSNumber) -> Bool {
    return left == right.floatValue
}

public func !=(left: Float, right: NSNumber) -> Bool {
    return left != right.floatValue
}

public func <(left: Float, right: NSNumber) -> Bool {
    return left < right.floatValue
}

public func <=(left: Float, right: NSNumber) -> Bool {
    return left <= right.floatValue
}

public func >(left: Float, right: NSNumber) -> Bool {
    return left > right.floatValue
}

public func >=(left: Float, right: NSNumber) -> Bool {
    return left >= right.floatValue
}

// MARK: - Geometry value operations

/// - parameter left:  Left rect
/// - parameter right: Right rect
///
/// - returns: Union of 2 rects
public func +(left: CGRect, right: CGRect) -> CGRect {
    return left.union(right)
}

/// - parameter left:  Left rect
/// - parameter right: Right rect
///
/// - returns: Intersection of 2 rects
public func %(left: CGRect, right: CGRect) -> CGRect {
    return left.intersection(right)
}

/// - parameter left:  Left rect
/// - parameter right: Size to inset
///
/// - returns: left.insetBy(right)
public func +(left: CGRect, right: CGSize) -> CGRect {
    return left.insetBy(dx: right.width, dy: right.height)
}

/// - parameter left:  Left rect
/// - parameter right: Size to offset
///
/// - returns: left.offsetBy(right)
public func +(left: CGRect, right: CGPoint) -> CGRect {
    return left.offsetBy(dx: right.x, dy: right.y)
}

// MARK: - Geometry value comparison

public func ==(left: CGPoint, right: CGPoint) -> Bool {
    return left.equalTo(right)
}

public func ==(left: CGSize, right: CGSize) -> Bool {
    return left.equalTo(right)
}

public func ==(left: CGRect, right: CGRect) -> Bool {
    return left.equalTo(right)
}

// MARK: - Collection operations

/**
 Make an new dicitonary with given dicitonary
 
 - parameter left:  Left dic
 - parameter right: Right dic
 
 - returns: Dic from left & right dic. If left & right have same keys, use values from right
 */
public func +<Key: Hashable, Value>(left: Dictionary<Key, Value>, right: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
    var result = Dictionary<Key, Value>()
    for key in left.keys {
        result[key] = left[key]
    }
    for key in right.keys {
        result[key] = right[key]
    }
    return result
}

/**
 Import key-value from right dic into left dic
 
 - parameter left:  Left dic
 - parameter right: Right dic
 */
public func +=<Key: Hashable, Value>(left: inout Dictionary<Key, Value>, right: Dictionary<Key, Value>) {
    for key in right.keys {
        left[key] = right[key]
    }
}

/**
 Remove values from dictionary
 
 - parameter left:  Dictionary to remove value
 - parameter right: List of values to remove
 
 - returns: New dictionary
 */
public func -<Key: Hashable, Value: Equatable>(left: Dictionary<Key, Value>, right: Array<Value>) -> Dictionary<Key, Value> {
    var result = Dictionary<Key, Value>()
    for key in left.keys {
        let val = left[key]!
        if !right.contains(val) {
            result[key] = val
        }
    }
    return result
}

/**
 Remove value from dictionary
 
 - parameter left:  Dictionary to remove values
 - parameter right: List of values to remove
 */
public func -=<Key: Hashable, Value: Equatable>(left: inout Dictionary<Key, Value>, right: Array<Value>) {
    var keyToRemove = [Key]()
    for key in left.keys {
        let val = left[key]!
        if right.contains(val) {
            keyToRemove.append(key)
        }
    }
    for key in keyToRemove {
        left[key] = nil
    }
}

// MARK: - Collections comparison

/// Compare 2 Any object
///
/// - parameter left:  Left object
/// - parameter right: Right object
/// - parameter t:     Any class you want
///
/// - returns: true if 2 objects are equal following Equaltable protocol
//public func equalAny<T: Equatable>(left: Any, right: Any, _ t: T.Type) -> Bool {
//    if let l = left as? [Any], let r = right as? [Any] {
//        return l == r
//    }
//    if let l = left as? [AnyHashable: Any], let r = right as? [AnyHashable: Any] {
//        return l == r
//    }
//    if let l = left as? T, let r = right as? T {
//        return l == r
//    }
//    if let l = left as? CGPoint, let r = right as? CGPoint {
//        return l == r
//    }
//    if let l = left as? CGSize, let r = right as? CGSize {
//        return l == r
//    }
//    if let l = left as? CGRect, let r = right as? CGRect {
//        return l == r
//    }
//    return false
//}
//
//public func ==(left: [Any], right: [Any]) -> Bool {
//    if left.count == right.count {
//        for i in 0 ..< left.count {
//            if !equalAny(left: left[i], right: right[i], NSObject.self) {
//                return false
//            }
//        }
//        return true
//    }
//    return false
//}

//public func ==(left: [AnyHashable: Any], right: [AnyHashable: Any]) -> Bool {
//    let lKeys = [AnyHashable](left.keys)
//    if left.count == right.count, lKeys == [AnyHashable](right.keys) {
//        for k in lKeys {
//            if !equalAny(left: left[k]!, right: right[k]!, NSObject.self) {
//                return false
//            }
//        }
//        return true
//    }
//    return false
//}

