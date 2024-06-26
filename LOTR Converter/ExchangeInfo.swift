//
//  ExchangeInfo.swift
//  LOTR Converter
//
//  Created by Neeraj Gupta on 26/04/23.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background Image
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                
                // Body text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                // Exchange rate
                ExchangeRate(leftImage: "goldpiece", text: "1 Gold Piece = 4 Gold Pennies", rightImage: "goldpenny")
                    .previewLayout(.sizeThatFits)
                ExchangeRate(leftImage: "goldpenny", text: "1 Gold Penny = 4 Silver Pieces", rightImage: "silverpiece")
                    .previewLayout(.sizeThatFits)
                ExchangeRate(leftImage: "silverpiece", text: "1 Silver Piece = 4 Silver Pennies", rightImage: "silverpenny")
                    .previewLayout(.sizeThatFits)
                ExchangeRate(leftImage: "silverpiece", text: "1 Silver Penny = 100 Copper Pennies", rightImage: "copperpenny")
                    .previewLayout(.sizeThatFits)
                
                // Done
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
            }
            .foregroundColor(.black)
        }
    }
}

struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
            .preferredColorScheme(.dark)
    }
}
