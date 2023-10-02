/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct ContentView: View {
    @State var isOn: Bool = false
    var body: some View {

        VStack {
            Toggle("Is On", isOn: $isOn.animation())
            Text("Default Padding")
            KeywordBubbleDefaultPadding(keyword: "chives", symbol: "leaf")
                .rotationEffect(isOn ? .degrees(0) : .degrees(180))

            Divider()
            Text("Padding with @ScaledMetric")
            KeywordBubble(keyword: "chives", symbol: "leaf")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
