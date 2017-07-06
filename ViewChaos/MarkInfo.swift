//
//  MarkInfo.swift
//  ViewChaosDemo
//
//  Created by Stan Hu on 5/7/2017.
//  Copyright © 2017 Qfq. All rights reserved.
//

import UIKit
struct Line:Equatable{
    var point1:ShortPoint
    var point2:ShortPoint
    init(point1:ShortPoint,point2:ShortPoint) {
        self.point1 = point1
        self.point2 = point2
    }
    var centerPoint:CGPoint{
        get{
            return CGPoint(x: (point1.point.x + point2.point.x)/2, y: (point1.point.y + point2.point.y)/2)
        }
    }
    
    var lineWidth:CGFloat{
        get{
            return sqrt(pow(abs(point1.point.x-point2.point.x), 2)+pow(abs(point1.point.y-point2.point.y), 2))
        }
    }
    
    public static func ==(lhs: Line, rhs: Line) -> Bool{
        if lhs.point1 == rhs.point1 && lhs.point2 == rhs.point2 {
            return true
        }
        return false
    }
}
struct ShortPoint :Equatable{
    var point:CGPoint
    var handle:CGFloat
    init(x:CGFloat,y:CGFloat,handle:CGFloat) {
        self.point = CGPoint(x: x, y: y)
        self.handle = handle
    }

    public static func ==(lhs: ShortPoint, rhs: ShortPoint) -> Bool{
        if lhs.point == rhs.point && lhs.handle == rhs.handle {
            return true
        }
        return false
    }
}

struct Interval {
    var start:CGFloat
    var length:CGFloat
    init(start:CGFloat,length:CGFloat) {
        self.start = start
        self.length = length
    }
}

struct FrameObject {
    var frame:CGRect
    var attachedView:UIView
    var topInjectedObjs:[Line]
    var leftInjectedObjs:[Line]
    init(frame:CGRect,attachedView:UIView) {
        self.frame = frame
        self.attachedView = attachedView
        topInjectedObjs = [Line]()
        leftInjectedObjs = [Line]()
    }
}

protocol AbstractView {

}

class BorderAttachView:UIView,AbstractView{
    
}

extension Array{
  //  func remove(obj:Element) ->Element {}
}
