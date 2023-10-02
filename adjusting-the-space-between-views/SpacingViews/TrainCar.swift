/*
 See LICENSE folder for this sample’s licensing information.
 */

import SwiftUI

enum TrainSymbol: String {
    case front = "train.side.front.car"
    case middle = "train.side.middle.car"
    case rear = "train.side.rear.car"
}

struct TrainCar: View {
    let position: TrainSymbol
    @State private var showFrame: Bool
    
    init(_ position: TrainSymbol, showFrame: Bool = false) {
        self.position = position
        self.showFrame = showFrame
    }
    var body: some View {
        VStack(alignment: .trailing) {
//            Toggle("Show Frame", isOn: $showFrame.animation())
//                .fixedSize()
            Image(systemName: position.rawValue)
                .border(showFrame ? .gray : .clear, width: 0.5)
                .background(Color(uiColor: .systemPink.withAlphaComponent(0.1)))
        }
    }
}

struct TrainTrack: View {
    var body: some View {
        Divider()
            .frame(maxWidth: 200)
    }
}

struct TrainCar_Previews: PreviewProvider {
    static var previews: some View {
        TrainCar(.front)
    }
}
