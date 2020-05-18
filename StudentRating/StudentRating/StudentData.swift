//
//  StudentData.swift
//  StudentRating
//
//  Created by Lukas Javorsky on 18/05/2020.
//  Copyright © 2020 Lukas Javorsky. All rights reserved.
//

import CoreData

public class StudentData:NSManagedObject, Identifiable {
    // Atributes in StudentData entity
    @NSManaged public var login:String?
    @NSManaged public var rating:String?
}

extension StudentData {
    // MARK: - Get the data from database
    static func getAllData() -> NSFetchRequest<StudentData>{
        let myRequest:NSFetchRequest<StudentData> = StudentData.fetchRequest() as! NSFetchRequest<StudentData>
        
        let sortDescriptor = NSSortDescriptor(key: "login", ascending: true)
        
        myRequest.sortDescriptors = [sortDescriptor]
        
        return myRequest
    }
}
