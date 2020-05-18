//
//  UserSettings.swift
//  StudentRating
//
//  Created by Lukas Javorsky on 18/05/2020.
//  Copyright © 2020 Lukas Javorsky. All rights reserved.
//

import Combine

final class UserSettings:ObservableObject{
    @Published var continuePressed:Bool = false
}
