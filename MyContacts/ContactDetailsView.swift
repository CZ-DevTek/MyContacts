//
//  ContactDetailsView.swift
//  MyContacts
//
//  Created by Carlos Garcia Perez on 4/5/24.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        
        Image(systemName: "person.fill")
            .resizable()
            .frame(width: 150, height: 150)
                VStack{
                    HStack{
                        Image(systemName: "phone")
                            .foregroundStyle(.blue)
                        Text(person.phoneNumber)
                            .font(.title)
                        Spacer()
                            
                    }
                    HStack{
                        Image(systemName: "envelope")
                            .foregroundStyle(.blue)
                        Text(person.email)
                            .font(.title)
                        Spacer()
                    }
                    Spacer()
                }
                .navigationTitle(person.fullName)
                .padding()
            }
        }

#Preview {
    ContactDetailsView(person: Person(name: "", surname: "", email: "", phoneNumber: ""))
}
