//
//  ContentView3.swift
//  Vorbereitung Swift iOS
//
//  Created by Okan Leenen on 31.07.24.
//

import Foundation
import SwiftUI


// MVVM

struct ContentView3: View {
    // Pseudo-Datenbank
    @State private var users = ["Alice", "Bob", "Charlie"]
    @State private var userInput = ""

    var body: some View {
        VStack {
            Text("Benutzerliste:")
                .font(.title)

            // Anzeigen der Benutzer
            List(users, id: \.self) { user in
                Text(user)
            }

            // Funktion zum Hinzufügen eines Benutzers mit Benutzereingabe
            HStack {
                TextField("Neuen Benutzer eingeben", text: $userInput)
                
                Button(action: {
                    self.addUser()
                }) {
                    Text("Hinzufügen")
                }
            }
        }
        .padding()
    }

    // Funktion zum Hinzufügen eines Benutzers zur Pseudo-Datenbank
    private func addUser() {
        guard !userInput.isEmpty else { return }
        users.append(userInput)
        userInput = ""
    }
}

#Preview {
    ContentView3()
}
