//
//  HomeView.swift
//  UbarApp
//
//  Created by Prabhu Devar on 22/07/25.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment:.top) {
            UbarMapViewReprentable()
                .ignoresSafeArea()
            
            if !showLocationSearchView{
                LocationSearchActivationView()
                    .padding(.top,72)
                    .onTapGesture {
                        withAnimation(.spring){
                            showLocationSearchView.toggle()
                        }
                    }
            }else{
                LocationSearchView(showLocationSearchView: $showLocationSearchView)
            }
            MapViewActionButton(locationServiceView: $showLocationSearchView)
                .padding(.leading,4)
                .padding(.top,5)
        }
    }
}

#Preview {
    HomeView()
}
