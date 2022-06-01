//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            DisclaimerView()
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}
