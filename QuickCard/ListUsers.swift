//
//  ListUsers.swift
//  QuickCard
//
//  Created by Kanokchai Amaphut on 28/9/2566 BE.
//

import SwiftUI

struct ListUsers: View {
    var body: some View {
        List {
            ForEach(User.user) { user in
                Text("sssss \(user.firstName) \(user.lastName)")
                    .font(.headline)
                Text(user.title)
                    .font(.subheadline)
            }
        }
    }
}

struct ListUsers_Previews: PreviewProvider {
    static var previews: some View {
        ListUsers()
    }
}
