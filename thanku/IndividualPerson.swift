//
//  IndividualPerson.swift
//  thanku
//
//  Created by 寒意⛓🥀💎▩xxııʌ.𝕽𝕬𝕽▽▽ on 5/20/24.
//

import SwiftUI
import SwiftData

struct IndividualPerson: View {
    @Environment(\.modelContext) private var modelContext
    var person:Item
    @State var newThingTheyDid:String = ""

    var body: some View {
        Text("\(person.name)")
        ForEach(person.goodDeeds, id: \.self){deed in
            Text(deed)
        }
        TextField("", text: $newThingTheyDid )
        Button("Add new Thing"){
            person.goodDeeds.append(newThingTheyDid)
        }
    }
}

#Preview {
    IndividualPerson(person: Item(name: "fffff"))
}
