//
//  ContentView.swift
//  iExpense
//
//  Created by Yasseen Rouni on 5/23/25.
//

import SwiftUI



struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    
    
    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
        Text("Hello \(name)")
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    
    var body: some View {
        Button("Show sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@the_yasseen")
        }
    }
}

#Preview {
    ContentView()
}
