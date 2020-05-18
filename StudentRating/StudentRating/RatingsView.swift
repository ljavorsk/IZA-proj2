//
//  RatingsView.swift
//  StudentRating
//
//  Created by Lukas Javorsky on 17/05/2020.
//  Copyright © 2020 Lukas Javorsky. All rights reserved.
//

import SwiftUI

struct RatingsView: View {
    /// What is the maximum points that the student can get
    public var maxPoints:Double
    /// Login of the student
    var login:String = ""
    /// Student's rating
    var rating:String = ""
    
    var body: some View {
        // MARK: - Body of the rating
        HStack {
            Text(login)
                .font(.headline)
            Spacer()
            Text(rating)
                .font(.body)
            Spacer().frame(width: 50)
            Image(systemName: "smiley.fill")
            .foregroundColor(whatColorSmile(maxPoints: maxPoints))
        }
    }
    
    // MARK: - Determines what color should the smiley have acording to the score
    private func whatColorSmile(maxPoints:Double) -> Color {
        if let points = Double(rating){
            if (points <= maxPoints * 0.3){
                return Color.red
            }
            else if (points <= maxPoints * 0.65) {
                return Color.yellow
            }
            else {
                return Color.green
            }
        }
        return Color.black
    }
}



struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(maxPoints: 5)
    }
}
