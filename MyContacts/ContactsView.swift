//
//  ContentView.swift
//  MyContacts
//
//  Created by Carlos Garcia Perez on 4/5/24.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack{
            List(persons, id: \.self) { person in
                NavigationLink(person.fullName, destination: ContactDetailsView(person: person))
            }
        }
        .listStyle(.plain)
        .navigationTitle("Contact List")
    }
}
#Preview {
    ContactsView(persons: Person.getContactList())
}
