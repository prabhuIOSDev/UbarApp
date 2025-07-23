//
//  LocationSearchResultCell.swift
//  UbarApp
//
//  Created by Prabhu Devar on 23/07/25.
//

import SwiftUI

struct LocationSearchResultCell: View {
    let title:String
    let subtitle:String
    var body: some View {
        HStack{
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 30, height: 30)
                
        
            VStack(alignment:.leading,spacing: 4){
                Text(title)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text(subtitle)
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Divider()
            }
            .padding(.leading,8)
            .padding(.vertical,8)
        
        }
        .padding(.leading)
    }
}

#Preview {
    LocationSearchResultCell(title: "Bangalore", subtitle: "124 Main Road")
}
