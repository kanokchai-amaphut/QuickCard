//
//  ImageView.swift
//  QuickCard
//
//  Created by Kanokchai Amaphut on 22/9/2566 BE.
//

import SwiftUI

struct ImageView: View {
    var imageName: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(text).foregroundColor(.white)
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageName: "envelope.circle.fill", text: .constant("Test"))
    }
}
