//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Neeraj Gupta on 26/04/23.
//

import SwiftUI

struct SelectCurrency: View {
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
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
                IconGrid(selectedCurrency: $leftCurrency)

                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency Icons
                IconGrid(selectedCurrency: $rightCurrency)
                
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
        SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
    }
}
