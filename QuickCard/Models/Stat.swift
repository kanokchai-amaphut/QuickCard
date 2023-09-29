//
//  Stat.swift
//  QuickCard
//
//  Created by Kanokchai Amaphut on 28/9/2566 BE.
//

import Foundation

struct Stat: Identifiable {
    let id = UUID()
    var requests: Int
    var complete: Int
    var satisfaction: Int
    var delayDays: Int
    var duration: Int
}
