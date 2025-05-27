//
//  ContentView.swift
//  iExpense
//
//  Created by Yasseen Rouni on 5/23/25.
//

import SwiftUI





struct ContentView: View {
    @AppStorage("tapCount") private var tapCount = 0
    
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
            
        }
    }
}

#Preview {  
    ContentView()
}
