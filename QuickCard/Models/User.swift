//
//  User.swift
//  QuickCard
//
//  Created by Kanokchai Amaphut on 28/9/2566 BE.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    var title: String
    var email: String
    var companyUrl: String
    var address: String
    
    var stat: Stat
}

extension User {
    static var selectedUser = User.user.first
    static let user = [
        User(firstName: "tua", lastName: "49", title: "P'tua", email: "tua@email.com", companyUrl: "SNK", address: "Burirum", stat: Stat(requests: 15, complete: 25, satisfaction: 3, delayDays: 45, duration: 55)),
        User(firstName: "Peam", lastName: "JukKu", title: "P'Peam", email: "peam@ematil.com", companyUrl: "SNK", address: "TahMai", stat: Stat(requests: 15, complete: 25, satisfaction: 3, delayDays: 45, duration: 55))
    ]
}
