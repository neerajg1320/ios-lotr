//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Neeraj Gupta on 26/04/23.
//

import SwiftUI

struct SelectCurrency: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background Image
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency Icons
                LazyVGrid(columns: gridLayout) {
                    ForEach(0..<5) { i in
                        CurrencyIcon(currencyImage: CurrencyImage.allCases[i].rawValue, currencyText: CurrencyText.allCases[i].rawValue)
                    }
                }

                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency Icons
//                LazyVGrid() -- here
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
            }
        }
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency()
    }
}
