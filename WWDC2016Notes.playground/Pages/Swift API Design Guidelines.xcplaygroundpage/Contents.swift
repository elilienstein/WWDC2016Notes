//: [Previous](@previous)

import Foundation
import UIKit
import CoreGraphics

// Drawing with Core Graphics in Swift 2
// Get a transform that will rotate around a given offset
/*
func rotationAround(offset: CGPoint, angle: CGFloat,
                    transform: CGAffineTransform = CGAffineTransformIdentity) -> CGAffineTransform {
    var result = CGAffineTransformTranslate(transform, offset.x, offset.y)
    result = CGAffineTransformRotate(result, angle)
    return CGAffineTransformTranslate(result, -offset.x, -offset.y)
}
// Trace a path in red
func trace(in context: CGContext, path: CGPath) {
    let red = CGColorCreateGenericRGB(1, 0, 0, 1)
    CGContextSaveGState(context)
    CGContextAddPath(context, path)
    CGContextSetStrokeColorWithColor(context, red)
    CGContextStrokePath(context)
    CGContextRestoreGState(context)
}
*/

// Drawing with Core Graphics in Swift 3
// Get a transform that will rotate around a given offset
func rotationAround(offset: CGPoint, angle: CGFloat,
                    transform: CGAffineTransform = .identity) -> CGAffineTransform {
    return transform.translateBy(x: offset.x, y: offset.y)
        .rotate(angle)
        .translateBy(x: -offset.x, y: -offset.y)
}
// Trace a path in red
func trace(in context: CGContext, path: CGPath) {
    let red = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
    
    context.saveGState()
    context.addPath(path)
    context.setStrokeColor(red)
    context.strokePath()
    context.restoreGState()
}
//: [Next](@next)
