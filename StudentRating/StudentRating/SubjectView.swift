//
//  SubjectView.swift
//  StudentRating
//
//  Created by Lukas Javorsky on 17/05/2020.
//  Copyright © 2020 Lukas Javorsky. All rights reserved.
//

import SwiftUI

struct SubjectView: View {
    /// Name of the subject
    public var subjectName:String
    /// Maximum points in rating
    public var maxPoints:Double
    
    @Environment(\.managedObjectContext) var MOC
    @FetchRequest(fetchRequest: StudentData.getAllData()) var data:FetchedResults<StudentData>

    @State private var newStudentLogin = ""
    @State private var newStudentRating:Double = 0
    
    var body: some View {
            List {
                // MARK: - Adding section
                Section(header: Text("Add student's rating")){
                    HStack{
                        TextField("Login", text: self.$newStudentLogin)
                        Spacer()
                        // MARK: - Slider with the text and plus-minus images
                        VStack{
                            // Slider with the rating score
                            HStack {
                                Image(systemName: "minus")
                                Slider(value: $newStudentRating, in: 0...maxPoints, step: 0.2)
                                    .accentColor(Color.green)
                                Image(systemName: "plus")
                            }.foregroundColor(Color.black)
                            Text("Rating: \(newStudentRating, specifier: "%.2f")")
                        }.padding()
                        Spacer().frame(width: 50)
                        // MARK: - Plus button
                        Button(action: {
                            // Don't allow to insert data with empty login
                            if (self.newStudentLogin == "") {
                                return
                            }
                            // Start saving the data to the MOC
                            let student = StudentData(context: self.MOC)
                            student.login = self.newStudentLogin
                            student.rating = String(format: "%.1f", self.newStudentRating)
                            
                            do {
                                try self.MOC.save()
                            } catch {
                                print("Couldn't save the data \(error.localizedDescription)")
                            }
                            
                            // Let user know, with haptics
                            let generator = UINotificationFeedbackGenerator()
                            generator.notificationOccurred(.success)
                            
                            // Refreshing the textfield and slider
                            self.newStudentLogin = ""
                            self.newStudentRating = 0
                            
                        }){
                            Image(systemName: "plus.circle.fill").foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }.font(.headline)
                // MARK: - Ratings section with all saved ratings
                Section(header: Text("Ratings")) {
                    ForEach(self.data) { student in
                        if (student.login != nil && student.rating != nil){
                            RatingsView(maxPoints: self.maxPoints, login: student.login!, rating: student.rating!)
                        }
                    }.onDelete{ indexSet in
                        // Deleting the student
                        if indexSet.first != nil{
                            let deletedItem = self.data[indexSet.first!]
                            self.MOC.delete(deletedItem)
                            
                            do{
                                try self.MOC.save()
                            } catch {
                                print("Couldn't save the deleted data \(error.localizedDescription)")
                            }
                        }
                    }
                }
            }.navigationBarTitle(subjectName)
            .navigationBarItems(trailing: EditButton())
    }
}

struct SubjectView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectView(subjectName: "IZA", maxPoints: 5)
    }
}
