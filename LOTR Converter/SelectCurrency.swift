//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Neeraj Gupta on 26/04/23.
//

import SwiftUI

struct SelectCurrency: View {
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
                ZStack {
                    // Currency Image
                    Image("copperpenny")
                        .resizable()
                        .scaledToFit()
                    
                    // Currency Text
                    VStack {
                        Spacer()
                        Text("Copper Penny")
                            .padding(3)
                            .font(.caption)
                        .background(.brown.opacity(0.75))
                    }
                }
                .padding(3)
                .frame(width: 100, height: 100)
                .background(.brown)
                .cornerRadius(25)
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency Icons
                
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
