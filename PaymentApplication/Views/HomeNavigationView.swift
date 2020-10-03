//
//  HomeNavigationView.swift
//  PaymentApplication
//
//  Created by Raphael Cerqueira on 02/10/20.
//

import SwiftUI

struct HomeNavigationView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "line.horizontal.3")
            })
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack(alignment: .topLeading) {
                    Image(systemName: "bell")
                    
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color(#colorLiteral(red: 0.9844337106, green: 0.4911109805, blue: 0.5051782131, alpha: 1)))
                        .overlay(
                            Text("9")
                                .font(.system(size: 7))
                                .bold()
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.7210716605, blue: 0.7755606771, alpha: 1)))
                        )
                }
            })
            
            Button(action: {}, label: {
                Image(systemName: "text.bubble")
            })
            .padding(.leading)
        }
        .font(.system(size: 24))
        .foregroundColor(Color(#colorLiteral(red: 0.6979770064, green: 0.6980791688, blue: 0.6979545951, alpha: 1)))
    }
}

struct HomeNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavigationView()
    }
}
