//
//  HomeView.swift
//  UbarApp
//
//  Created by Prabhu Devar on 22/07/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment:.top) {
            UbarMapViewReprentable()
                .ignoresSafeArea()
            
            LocationSearchActivationView()
                .padding(.top,72)
            MapViewActionButton()
                .padding(.leading,4)
                .padding(.top,5)
        }
    }
}

#Preview {
    HomeView()
}
