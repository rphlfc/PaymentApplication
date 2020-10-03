//
//  ContentView.swift
//  PaymentApplication
//
//  Created by Raphael Cerqueira on 02/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            VStack {
                HomeNavigationView()
                    .padding(.horizontal)
                
                CardView()
                
                BalanceView()
                
                PayView()
                    
                Spacer()
                
                MenuView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


