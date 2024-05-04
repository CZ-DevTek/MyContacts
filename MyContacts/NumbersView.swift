//
//  NumbersView.swift
//  MyContacts
//
//  Created by Carlos Garcia Perez on 4/5/24.
//

import SwiftUI

struct NumbersView: View {
    var body: some View {
        
        VStack{
            HStack{
                Text("FullName")
                Spacer()
            }
                HStack{
                Image(systemName: "phone")
                    .foregroundStyle(.blue)
                Text("phone")
                    .font(.title)
                Spacer()
            }
            HStack{
                Image(systemName: "envelope")
                    .foregroundStyle(.blue)
                Text("email")
                    .font(.title)
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    NumbersView()
}
