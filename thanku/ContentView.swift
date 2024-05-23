//
//  ContentView.swift
//  thanku
//
//  Created by 寒意⛓🥀💎▩xxııʌ.𝕽𝕬𝕽▽▽ on 5/1/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State var showPersonMaker = false
    var body: some View {
        NavigationSplitView {
            VStack{
                ForEach(items){ item in
                   
                    NavigationLink {
                        IndividualPerson(person: item)
                    } label: {
                        Text("\(item.name)")
                    }
                }
                .onDelete(perform: deleteItems)
            }
            
            
            
            
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                
                ToolbarItem {
                    Button{
                        showPersonMaker.toggle()
                    }label:{
                        Image(systemName:"plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
        .sheet(isPresented: $showPersonMaker){
            PersonMakerForm()
        }
    }
    
    //    private func addItem() {
    //        withAnimation {
    //
    //            modelContext.insert(newItem)
    //        }
    //    }
    
    
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
