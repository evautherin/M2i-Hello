//
//  ContentView.swift
//  Hello
//
//  Created by Etienne Vautherin on 19/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var name = ""
    
    var body: some View {
        let upperName = name.uppercased()
        
        VStack {
            Text("Counter: \(counter) \(name)")
            Button("Increment") {
                counter += 1
            }
//            TextField("Name", text: $name)
            NameField(name: $name)
        }
        .padding()
    }
}

struct NameField: View {
//    @State var rawName = ""
    @Binding var name: String
    
//    init(rawName: String = "", name: Binding<String>) {
//        self.rawName = rawName
//        self._name = name
//    }
    
    var body: some View {
        TextField("Name", text: $name)
//            .onChange(of: rawName) { oldValue, newValue in
//                name = newValue.uppercased()
//            }
    }
}



#Preview {
    ContentView()
}
