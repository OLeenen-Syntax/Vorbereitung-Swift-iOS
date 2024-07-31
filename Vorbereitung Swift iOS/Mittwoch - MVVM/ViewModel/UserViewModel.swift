//
//  UserViewModel.swift
//  Vorbereitung Swift iOS
//
//  Created by Okan Leenen on 31.07.24.
//

import Foundation

class UserViewModel: ObservableObject{
    @Published var userInput = ""
    
    var userModel = UserModel()
    
    func addUser(){
        userModel.addUser(userInput)
        userInput = ""
    }
}
