//
//  IntroView.swift
//  StudentRating
//
//  Created by Lukas Javorsky on 17/05/2020.
//  Copyright © 2020 Lukas Javorsky. All rights reserved.
//

import SwiftUI

struct IntroView: View {
    @Binding var continuePressed:Bool
    
    var body: some View {
        // MARK: - Whole introduction scene with all views
        ScrollView {
            VStack(alignment: .center) {
                Spacer()
                TitleView()
                DescriptionView()
                Spacer(minLength: 30)

                Button(action: {
                    // Set that the first launch have been presented
                    UserDefaults.standard.set(true, forKey: "hasSeenOnboarding")
                    let generator = UINotificationFeedbackGenerator()
                    generator.notificationOccurred(.success)
                    self.continuePressed = true
                }) {
                    HStack{
                        Text("Continue")
                        Image(systemName: "chevron.right")
                    }.padding(.horizontal)
                        .padding().background(Capsule().fill(Color.appColor))
                        .accentColor(.white)
                }
                .padding(.horizontal)
            }
        }
    }
}

