//
//  DescriptionView.swift
//  StudentRating
//
//  Created by Lukas Javorsky on 17/05/2020.
//  Copyright © 2020 Lukas Javorsky. All rights reserved.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        // MARK: - All  descriptions in vertical stack
        VStack(alignment: .leading) {
            DescriptionDetail(title: "Rate Students", detail: "Rate your student's work by simply adding their login into the textfield and then adjust the slider for the points", imageName: "rectangle.stack.person.crop")
            DescriptionDetail(title: "Add/Delete", detail: "Add or delete the ratings by sliding to the left", imageName: "plus.slash.minus")
        }.padding(.horizontal)
    }
}

struct DescriptionDetail: View {
    /// Title of the description
    var title: String = "title"
    /// Detailed description
    var detail: String = "desc"
    /// Name of the image
    var imageName: String = "questionmark"

    var body: some View {
        // MARK: - Detail of a single description
        HStack(alignment: .center) {
            Image(systemName: imageName)
                .font(.largeTitle)
                .foregroundColor(.appColor)
                .padding()
                .accessibility(hidden: true)

            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibility(addTraits: .isHeader)

                Text(detail)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding(.top)
    }
}
