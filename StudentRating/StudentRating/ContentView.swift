//
//  ContentView.swift
//  StudentRating
//
//  Created by Lukas Javorsky on 17/05/2020.
//  Copyright © 2020 Lukas Javorsky. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    /// State that checks if the onboarding screen is active
    @State private var hasSeenOnboarding = UserDefaults.standard.bool(forKey: "hasSeenOnboarding")
    /// Settings that stores if the user had already seen the onboarding
    @ObservedObject var settings = UserSettings()
    
    
    var body: some View {
        Group {
            if !hasSeenOnboarding && !settings.continuePressed {
                // MARK: - Introduction view for onboarding informations
                IntroView(continuePressed: self.$settings.continuePressed)
            } else {
                // MARK: - Main screen with the actual application
                MainContentView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
