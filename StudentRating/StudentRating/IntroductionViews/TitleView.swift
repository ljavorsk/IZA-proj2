//
//  TitleView.swift
//  StudentRating
//
//  Created by Lukas Javorsky on 17/05/2020.
//  Copyright © 2020 Lukas Javorsky. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        // MARK: - Title of the introduction view
        VStack {
            Image("teacher-figure")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, alignment: .center)
                .accessibility(hidden: true)

            Text("Welcome to")
                .fontWeight(.black)
                .font(.system(size: 30))

            Text("Student Rating App")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundColor(.appColor)
        }
    }
}
