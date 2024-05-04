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
        List{
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .foregroundStyle(.black)
                        .frame(width: 150, height: 150)
                    Spacer()
                }
                
                HStack{
                    Image(systemName: "phone")
                        .foregroundStyle(.blue)
                    Text(person.phoneNumber)
                        .font(.title3)
                    Spacer()
                }
                HStack{
                    Image(systemName: "envelope")
                        .foregroundStyle(.blue)
                    Text(person.email)
                        .font(.title3)
                    Spacer()
                }
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle(person.fullName)
    }
    
}

#Preview {
    ContactDetailsView(person: Person(name: "Tim", surname: "Cook", email: "theboss@apple.com", phoneNumber: "+1000000001"))
}
