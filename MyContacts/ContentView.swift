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
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contact List")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}
#Preview {
    ContentView(persons: Person.getContactList())
}
