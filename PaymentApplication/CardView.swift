//
//  CardView.swift
//  PaymentApplication
//
//  Created by Raphael Cerqueira on 02/10/20.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(systemName: "esim")
                .font(.system(size: 48))
                .foregroundColor(Color(#colorLiteral(red: 0.8489519954, green: 0.971842587, blue: 1, alpha: 1)))
            
            Spacer()
            
            CardNumberView()
            
            
            Text("HIREN KESARIYA")
                .foregroundColor(Color(#colorLiteral(red: 0.8489519954, green: 0.971842587, blue: 1, alpha: 1)))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("EXPIRY")
                        .font(.system(size: 10))
                        .foregroundColor(Color(#colorLiteral(red: 0.8489519954, green: 0.971842587, blue: 1, alpha: 1)))
                    
                    Text("12/18")
                        .font(.system(size: 20))
                        .foregroundColor(Color(#colorLiteral(red: 0.8489519954, green: 0.971842587, blue: 1, alpha: 1)))
                }
                
                Spacer()
                
                VStack {
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.09992148727, blue: 0.1166556701, alpha: 1)))
                            .offset(x: -20)
                        
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 0.9995579123, green: 0.6650906205, blue: 0.08190511912, alpha: 1)).opacity(0.8))
                    }
                    
                    Text("mastercard")
                        .font(.system(size: 9, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.7452225089, green: 0.9176571965, blue: 0.9759714007, alpha: 1)))
                        .offset(x: -9)
                }
            }
        }
        .padding(.top, 40)
        .padding([.leading, .bottom], 30)
        .padding(.trailing)
        .frame(maxWidth: .infinity)
        .frame(height: 260)
        .background(LinearGradient(gradient: Gradient(colors: [Color("leadingCardColor"), Color("trailingCardColor")]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .padding([.top, .horizontal])
    }
}

struct CardNumberView: View {
    var body: some View {
        HStack(spacing: 4) {
            ForEach(0 ..< 12) { i in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8489519954, green: 0.971842587, blue: 1, alpha: 1)))
                    .padding(.leading, i != 0 && i % 4 == 0 ? 15 : 0)
            }
            
            Text("3456")
                .font(.system(size: 20))
                .foregroundColor(Color(#colorLiteral(red: 0.8489519954, green: 0.971842587, blue: 1, alpha: 1)))
                .padding(.leading)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
