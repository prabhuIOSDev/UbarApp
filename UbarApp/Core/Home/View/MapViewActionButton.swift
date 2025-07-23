//
//  MapViewActionButton.swift
//  UbarApp
//
//  Created by Prabhu Devar on 23/07/25.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var locationServiceView : Bool
    var body: some View {
        Button{
            withAnimation(.snappy){
                locationServiceView.toggle()
            }
        }label: {
            Image(systemName: !locationServiceView ? "line.horizontal.3": "arrow.left")
                .font(.title2)
                .imageScale(.medium)
                .padding()
                .foregroundColor(.black)
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

#Preview {
    MapViewActionButton(locationServiceView: .constant(true))
}
