//
//  BalanceView.swift
//  PaymentApplication
//
//  Created by Raphael Cerqueira on 02/10/20.
//

import SwiftUI

struct BalanceView: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "plus.circle")
                    .font(.system(size: 28))
                    .foregroundColor(Color("activeColor"))
                
            })
            
            VStack {
                HStack {
                    Text("$115")
                        .foregroundColor(Color(#colorLiteral(red: 0.4963442087, green: 0.5062295198, blue: 0.50597018, alpha: 1)))
                    
                    Text(".54")
                        .foregroundColor(Color(#colorLiteral(red: 0.7777634263, green: 0.792758286, blue: 0.7879762053, alpha: 1)))
                }
                .font(.system(size: 28, weight: .medium))
                
                Text("BALANCE")
                    .font(.system(size: 13))
                    .foregroundColor(Color(#colorLiteral(red: 0.7777634263, green: 0.792758286, blue: 0.7879762053, alpha: 1)))
            }
            .padding(.horizontal)
            
            Button(action: {}, label: {
                Image(systemName: "dollarsign.circle")
                    .font(.system(size: 28))
                    .foregroundColor(Color("activeColor"))
                
            })
            
            Spacer()
        }
        .padding(.vertical, 20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(Color(#colorLiteral(red: 0.8861967325, green: 0.8863243461, blue: 0.8861687779, alpha: 1)), lineWidth: 1)
                .foregroundColor(Color("balanceBackground"))
        )
        .padding()
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
    }
}
