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
        VStack{
            List(persons, id: \.self) { person in
                NavigationLink(destination: ContactDetailsView(person: person)){
                    Text("\(person.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}
#Preview {
    ContactsView(persons: Person.getContactList())
}
