//
//  ContentView.swift
//  MyContacts
//
//  Created by Carlos Garcia Perez on 4/5/24.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    let fullName: String
    let title: String
    
    var body: some View {
        
            HStack {
                List(persons, id: \.self) { person in
                    NavigationLink(destination: ContactDetailsView(person: person)){
                    Text("\(person.fullName)")
                }
                .listStyle(.plain)
                .navigationTitle(title)
            }
            .padding()
        }
        .navigationTitle("Contact List")
    }
}
#Preview {
    ContactsView(persons: Person.getContactList(), fullName: "", title: "Contacts")
}
