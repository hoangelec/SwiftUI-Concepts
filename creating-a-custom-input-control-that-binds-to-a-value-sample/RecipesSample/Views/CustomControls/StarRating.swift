import SwiftUI

struct StarRating: View {
    @Binding var rating: Int
    private let maxRating = 5

    var body: some View {
        HStack {
            ForEach(1..<maxRating + 1, id: \.self) { value in
                Image(systemName: "star")
                    .symbolVariant(value <= rating ? .fill : .none)
                    .foregroundColor(.accentColor)
                    .onTapGesture {
                        if value != rating {
                            rating = value
                        } else {
                            rating = 0
                        }
                    }
            }
        }
    }
}

struct StarRating_Previews: PreviewProvider {

    public struct StatefulPreviewWrapper<Value, Content: View>: View {
        @State var value: Value
        var content: (Binding<Value>) -> Content

        public var body: some View {
            content($value)
        }

        public init(_ value: Value, content: @escaping (Binding<Value>) -> Content) {
            self._value = State(wrappedValue: value)
            self.content = content
        }
    }

    static var previews: some View {
        StatefulPreviewWrapper.init(2) {
            StarRating(rating: $0)
        }
    }
}

