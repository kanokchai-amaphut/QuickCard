//
//  ContentView.swift
//  QuickCard
//
//  Created by Kanokchai Amaphut on 22/9/2566 BE.
//

import SwiftUI

struct ContentView: View {
    let data = 1...10
    @StateObject private var color = CustomColor()
    @Environment(\.verticalSizeClass) var vSizeClass: UserInterfaceSizeClass?
    @State private var opacity: Double = 0.5
    @State private var user: User = User(firstName: "sdrewr", lastName: "werwer", title: "werwer", email: "werewr", companyUrl: "werwer", address: "werwer", stat: Stat(requests: 0, complete: 0, satisfaction: 0, delayDays: 0, duration: 0))
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Circle()
                            .frame(width: 25)
                            .foregroundColor(Color("PrimaryColor"))
                        Slider(value: $opacity)
                    }
                    
//                    ForEach(data, id: \.self){ item in
//                        NavigationLink(destination: CardDetail()) {
//                            BusinessCard(opacity: $opacity)
//                        }
//                    }
                    
                    ForEach(User.user) { user in
                        NavigationLink(destination: CardDetail(user: user)) {
                            BusinessCard(user: user, opacity: $opacity)
                        }.onTapGesture {
                            User.selectedUser = user
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
