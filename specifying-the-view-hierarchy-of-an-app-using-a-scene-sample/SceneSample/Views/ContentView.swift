/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct ContentView: View {
    @StateObject private var journal = Journal()
    @State private var choice = "a"
    
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(.blue)
            Circle()
                .foregroundColor(.orange)
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .foregroundColor(.green)
        }
        .aspectRatio(3.0, contentMode: .fit)
    }   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
