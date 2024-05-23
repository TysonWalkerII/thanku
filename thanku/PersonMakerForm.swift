//
//  PersonMakerForm.swift
//  thanku
//
//  Created by 寒意⛓🥀💎▩xxııʌ.𝕽𝕬𝕽▽▽ on 5/1/24.
//

import SwiftUI

struct PersonMakerForm: View {
    @Environment(\.modelContext) private var modelContext
    @State var personName = ""

    var body: some View {
        TextField("Enter their name", text: $personName)
        Button("Add this person"){
           addPerson(name: personName)
        }
        

    }
    
    func addPerson(name:String){
        withAnimation{
            let newPerson = Item(name: name)
            modelContext.insert(newPerson)
        }
    }

}

#Preview {
    PersonMakerForm()
}
