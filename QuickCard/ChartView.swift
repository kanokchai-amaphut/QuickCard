//
//  ChartView.swift
//  QuickCard
//
//  Created by Kanokchai Amaphut on 22/9/2566 BE.
//

import SwiftUI

struct ChartView: View {
    var stat: Stat
    var body: some View {
        GeometryReader { proxy in
            HStack(alignment: .bottom, spacing: 5) {
                BarView(size: proxy.size, value: stat.requests, label: "Request")
                BarView(size: proxy.size, value: stat.complete, label: "Completed")
                BarView(size: proxy.size, value: stat.satisfaction, label: "Satisfaction")
                BarView(size: proxy.size, value: stat.delayDays, label: "DelayDays")
                BarView(size: proxy.size, value: stat.duration, label: "Duration")
                Rectangle()
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(stat: Stat(requests: 15, complete: 25, satisfaction: 3, delayDays: 45, duration: 55))
    }
}
