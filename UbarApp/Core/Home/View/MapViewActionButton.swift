//
//  MapViewActionButton.swift
//  UbarApp
//
//  Created by Prabhu Devar on 23/07/25.
//

import SwiftUI

struct MapViewActionButton: View {
    var body: some View {
        Button{}label: {
            Image(systemName: "line.horizontal.3")
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
    MapViewActionButton()
}
