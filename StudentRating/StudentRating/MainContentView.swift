//
//  MainContentView.swift
//  StudentRating
//
//  Created by Lukas Javorsky on 17/05/2020.
//  Copyright © 2020 Lukas Javorsky. All rights reserved.
//

import SwiftUI

struct MainContentView: View {
    /// State that check's if we are creating new subject
    @State private var creatingNewSubject = false
    /// Subject name
    private var subject = "IZA"
    /// Maximum score that student can get
    private var maxPoints:Double = 5
    
    var body: some View {
        NavigationView{
            ZStack{
                // MARK: - Background of the main scene
                Image("background")
                    .resizable()
                    .opacity(0.8)
                .edgesIgnoringSafeArea(.all)
                HStack{
                    Image("book")
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                    .frame(width: 180, alignment: .leading)
                    .offset(y: 150)
                    
                    Image("cap")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, alignment: .trailing)
                        .offset(y: 200)
                }
                // MARK: - Button with navigation link to the subject
                VStack{
                    List{
                        NavigationLink(destination: SubjectView(subjectName: subject, maxPoints: maxPoints)){
                            Text(subject + " subject")
                                .font(.headline)
                        }
                    }.opacity(0.5)
                    .listStyle(GroupedListStyle())
                }
            }.navigationBarTitle("StudentRating")
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}

