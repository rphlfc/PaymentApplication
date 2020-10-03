//
//  MenuView.swift
//  PaymentApplication
//
//  Created by Raphael Cerqueira on 02/10/20.
//

import SwiftUI

struct MenuView: View {
    let items = ["menubar.arrow.up.rectangle", "menubar.arrow.down.rectangle", "heart.text.square", "flag", "ellipsis"]
    
    @State var selectedItem = 1
    
    var body: some View {
        HStack {
            ForEach(0 ..< items.count) { item in
                Button(action: {
                    selectedItem = item
                }, label: {
                    Image(systemName: items[item])
                        .font(.system(size: 20))
                        .foregroundColor(selectedItem == item ? Color("activeColor") : Color.gray)
                })
                
                if item < items.count - 1 {
                    Spacer()
                }
            }
        }
        .padding()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
