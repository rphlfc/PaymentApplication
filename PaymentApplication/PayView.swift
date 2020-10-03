//
//  PayView.swift
//  PaymentApplication
//
//  Created by Raphael Cerqueira on 02/10/20.
//

import SwiftUI

struct PayView: View {
    var body: some View {
        VStack {
            Button(action: {}, label: {
                Image(systemName: "touchid")
                    .font(.system(size: 48))
                    .foregroundColor(Color("activeColor"))
            })
            
            Text("TAP & PAY")
                .font(.system(size: 13))
                .foregroundColor(Color(#colorLiteral(red: 0.7777634263, green: 0.792758286, blue: 0.7879762053, alpha: 1)))
                .padding(.top)
        }
    }
}

struct PayView_Previews: PreviewProvider {
    static var previews: some View {
        PayView()
    }
}
