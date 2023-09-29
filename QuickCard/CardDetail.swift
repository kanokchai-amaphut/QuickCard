//
//  CardDetail.swift
//  QuickCard
//
//  Created by Kanokchai Amaphut on 28/9/2566 BE.
//

import SwiftUI

struct CardDetail: View {
    var user: User
    @State var isChartVisible = false
    @State var isChartLoaded = false
    var body: some View {
        VStack {
            BusinessCard(user: user, opacity: Binding.constant(1), isChartLoaded: isChartLoaded)
                .padding(.bottom, 20)
                .scaleEffect(isChartVisible ? 0.8 : 1)
                .onTapGesture() {
                    withAnimation(.easeInOut(duration: 1.5)) {
                        isChartVisible.toggle()
                    }
                }
            
                .onLongPressGesture {
                }
            
            Spacer()
            if isChartVisible {
                ChartView(stat: user.stat)
                    .scaleEffect(0.6)
                    .transition(.move(edge: .bottom))
                    .onAppear {
                        isChartLoaded = true
                    }
                
                    .onDisappear {
                        isChartLoaded = false
                    }
            }
        }
        .scaleEffect(isChartVisible ? 1.0 : 0.8)
        .animation(.easeOut, value: isChartVisible)
    }
}

struct CardDetail_Previews: PreviewProvider {
    static var user = User(firstName: "dsfadsf", lastName: "dsfadsf", title: "dsfdasf", email: "sdfasdf", companyUrl: "sdfadsf", address: "dsfadsf", stat: Stat(requests: 15, complete: 25, satisfaction: 3, delayDays: 45, duration: 55))
    static var previews: some View {
        CardDetail(user: user)
    }
}
