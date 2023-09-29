//
//  BusinessCard.swift
//  QuickCard
//
//  Created by Kanokchai Amaphut on 22/9/2566 BE.
//

import SwiftUI

//struct User {
//    let name: String
//    let email: String
//    let position: String
//    let location: String
//    let link: String
//
//    init() {
//        self.name = "John Doe"
//        self.email = "John@example.com"
//        self.position = "Software Engineer"
//        self.location = "123 Address Bangkok Thailand"
//        self.link = "example.com"
//    }
//}

//let user = User(firstName: "", lastName: "", title: "", email: "", companyUrl: "", address: "")

struct BusinessCard: View {
    
//    @State var name: String = user.firstName
//    @State var position: String = user.title
//    @State var email: String = user.email
//    @State var link: String = user.companyUrl
//    @State var location: String = user.address
    @State var user: User = User(firstName: "tua", lastName: "tua", title: "ios dev", email: "tua@email.com", companyUrl: "SNK", address: "snk", stat: Stat(requests: 0, complete: 0, satisfaction: 0, delayDays: 0, duration: 0))
    @Binding var opacity: Double
    
    var isChartLoaded: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("PrimaryColor"))
                .frame(width: 300, height: 200)
                .cornerRadius(20)
                .shadow(radius: 10)
                .opacity(opacity)
            
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    if isChartLoaded {
                        Image(systemName: "arrow.up.square")
                    } else {
                        Image(systemName: "arrow.down.square")
                    }
                }.frame(width: 250)
                
                Text(user.firstName).font(.title).foregroundColor(.white)
                Text(user.title).italic().foregroundColor(.white)
                
                HStack {
                    ImageView(imageName: "envelope.circle.fill", text: $user.email)
                }
                
                HStack {
                    ImageView(imageName: "link.circle.fill", text: $user.companyUrl)
                }
                
                HStack {
                    ImageView(imageName: "location.circle.fill", text: $user.address)
                }
                
                Button(action: {
                    reset()
                }) {
                    Label("Reset", systemImage: "clear.fill")
                }
                .padding(.top)
                .frame(maxWidth: 250)
            }
            .foregroundColor(.white)
        }
    }
    
    func reset() {
        opacity = 0.5
    }
}

struct BusinessCard_Previews: PreviewProvider {
    static var previews: some View {
        BusinessCard(opacity: Binding.constant(0.5))
    }
}
