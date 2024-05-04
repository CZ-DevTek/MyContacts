//
//  ContentView.swift
//  MyContacts
//
//  Created by Carlos Garcia Perez on 4/5/24.
//

import SwiftUI

struct ContentView: View {
    let persons:[Person]
    
    var body: some View {
        TabView {
            ContactsView(persons: Person.getContactList(), fullName: "", title: "Contacts")
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            NumbersView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("numbers")
                }
        }
        
    }
}
#Preview {
    ContentView(persons: Person.getContactList())
}
