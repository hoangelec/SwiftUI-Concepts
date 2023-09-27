/*
 See LICENSE folder for this sample’s licensing information.
 */

import SwiftUI

struct CaptionedPhoto: View {
    let assetName: String
    let captionText: String
    var body: some View {
        
        List {
            Image(assetName)
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 100)

//                .aspectRatio(contentMode: .fill)
//                .frame(width: 300, height: 200)
        }
        
        
//            .resizable()
//            .scaledToFit()
//
    }
}

struct Caption: View {
    let text: String
    var body: some View {
        Text(text)
            .padding()
            .background(Color("TextContrast").opacity(0.75),
                        in: RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}

struct CaptionedPhoto_Previews: PreviewProvider {
    static let landscapeName = "Landscape"
    static let landscapeCaption = "This photo is wider than it is tall."
    static let portraitName = "Portrait"
    static let portraitCaption = "This photo is taller than it is wide."
    static var previews: some View {
        Group {
            CaptionedPhoto(assetName: portraitName,
                           captionText: portraitCaption)
            CaptionedPhoto(assetName: landscapeName,
                           captionText: landscapeCaption)
        }
        
    }
}
