//
//  UserModel.swift
//  Vorbereitung Swift iOS
//
//  Created by Okan Leenen on 31.07.24.
//

import Foundation


class UserModel: ObservableObject{
    @Published var users = ["Alice", "Laura", "Kevin"]
    
    func addUser(_ user: String){
        users.append(user)
    }
}
