/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct DefaultSpacing: View {
    var body: some View {
        Text("Default Spacing")
        HStack() {
            Spacer()
            TrainCar(.rear)
            
            TrainCar(.middle)
            TrainCar(.front)
            Spacer()
                .background(Color(uiColor: .red))
        }
        .background(Color(uiColor: .cyan))
        TrainTrack()
    }
}

struct DefaultSpacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DefaultSpacing()
        }
//        .previewInterfaceOrientation(.landscapeLeft)
    }
}
