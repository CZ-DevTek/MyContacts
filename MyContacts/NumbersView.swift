//
//  NumbersView.swift
//  MyContacts
//
//  Created by Carlos Garcia Perez on 4/5/24.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
            List(persons, id: \.self) { person in
                Section(header: Text(person.fullName)) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundStyle(.blue)
                        Text(person.phoneNumber)
                            .font(.title3)
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundStyle(.blue)
                        Text(person.email)
                            .font(.title3)
                        Spacer()
                    }
                }
            }
            .listStyle(.insetGrouped)
        .navigationTitle("Contact List")
    }
}


#Preview {
    NumbersView(persons: Person.getContactList())
}
