//
//  LocationSearchView.swift
//  UbarApp
//
//  Created by Prabhu Devar on 23/07/25.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var currentLoaction: String = ""
    @Binding var showLocationSearchView: Bool
    @StateObject var viewModel = LocationSearchViewModel()
    
    
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
                    TextField(" Current Location", text: $currentLoaction)
                        .frame(height: 35)
                        .background(Color.gray.opacity(0.1))
                        .padding(.trailing)
                    TextField(" Destination Location", text:$viewModel.queryFragment)
                        .frame(height: 35)
                        .background(Color.gray.opacity(0.6))
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top,64)
            
            Divider()
                .padding(.vertical)
            
            // list view ...
            
            ScrollView{
                VStack(alignment:.leading){
                    ForEach(viewModel.result ,id: \.self){ result in
                        LocationSearchResultCell(title: result.title, subtitle: result.subtitle)
                            .onTapGesture {
                                showLocationSearchView.toggle()
                            }
                           .padding(.vertical,5)
                    }
                }
            }
            
        }
        .background(.white)
    }
}

#Preview {
    LocationSearchView(showLocationSearchView: .constant(false))
}
