// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftUI

@available(macOS 10.15, *)
struct ContentView: View {
    @State private var showingAlert = false
    public let title: String
    public let message: String

    var body: some View {
        if #available(macOS 12.0, *) {
            Button("Show Alert") {
                showingAlert = true
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text(title),
                message: Text(message),
                dismissButton: .default(Text("Got it!")))
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
