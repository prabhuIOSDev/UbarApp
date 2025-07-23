//
//  LocationSearchActivationView.swift
//  UbarApp
//
//  Created by Prabhu Devar on 22/07/25.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(.black)
                .frame(width: 8, height: 8)
                .padding()
            
            Text("Wher to go?")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 55, height: 50)
        .background(
            Rectangle()
                .fill(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10),)
                .shadow(color: .black, radius: 6)
               
                
        )
    }
}

#Preview {
    LocationSearchActivationView()
}
