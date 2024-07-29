//
//  Optionals.swift
//  Vorbereitung Swift iOS
//
//  Created by Okan Leenen on 29.07.24.
//

import Foundation


struct User{
    let name: String
    let age: Int?
}



func yetAnotherMain(){
    let user = User(name: "Dimitri", age: nil)
    
    // IF LET
    if let age = user.age{
        print("Der User ist \(age) Jahre alt")
    } else {
        print ("Age ist Nil")
    }

    //GUARD LET
    guard let anotherAge = user.age else{
        print("Age ist Nil")
        return
    }
    
    // NIL Coalescing (Nil Verschmelzung)
    let anotherAnotherAge = user.age ?? 0
    
    // Force Unwrapping (erzwungenes entpacken)
    let yetAnotherAge = user.age!
    
}
