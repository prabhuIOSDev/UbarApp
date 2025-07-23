//
//  LocationSearchView.swift
//  UbarApp
//
//  Created by Prabhu Devar on 23/07/25.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var currentLoaction: String = ""
    @State private var destinationLocation: String = ""
    
    
    var body: some View {
        VStack {
            // header view
            HStack{
                VStack{
                    Circle()
                        .fill(.blue)
                        .frame(width: 8,height: 8)
                    
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 1,height: 25)
                    Rectangle()
                        .fill(.green)
                        .frame(width: 8,height: 8)
                }
                
                VStack{
                    TextField("Current Location", text: $currentLoaction)
                        .frame(height: 30)
                        .background(Color.gray.opacity(0.1))
                        .padding(.trailing)
                    TextField("Destination Location", text: $destinationLocation)
                        .frame(height: 30)
                        .background(Color.gray.opacity(0.6))
                        .padding(.trailing)
                    
                        
                }
            }
            .padding(.horizontal)
            
            
            // list view ...
            
        }
    }
}

#Preview {
    LocationSearchView()
}
