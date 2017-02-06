//
//  Observer.swift
//  Observer Pattern
//
//  Created by Don on 2017/1/10.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

protocol Observer:class {
    func notify(item:String)
}

protocol Subject {
    func addObservers(observers:Observer...)
    func removeObserver(observer:Observer)
    func sendNotifications(item:String)
}

class SubjectBase: Subject {
    private var observers = [Observer]()
    
    func addObservers(observers:Observer...) {
        for item in observers {
            self.observers.append(item)
        }
    }
    
    func removeObserver(observer:Observer) {
        self.observers = self.observers.filter{ $0 !== observer }
    }
    
    // to announce today's special
    func sendNotifications(item:String) {
        for observer in observers {
            observer.notify(item: item)
        }
    }
}
