import SwiftUI

enum SidebarItem: Hashable {
    case all, favorites, recents
    case collection(String)
    
    var title: String {
        switch self {
        case .all:
            return "All Recipes"
        case .favorites:
            return "Favorites"
        case .recents:
            return "Recents"
        case .collection(let name):
            return name
        }
    }
}

struct SidebarView: View {
    @Binding var selection: SidebarItem?
    @ObservedObject var recipeBox: RecipeBox
    @State var toggleOn: Bool = false
    
    var body: some View {
        List(selection: $selection) {
            Section("Library") {
                NavigationLink(value: "Some text") {
                    Toggle("Toggle title \(toggleOn ? "On" : "Off")", isOn: $toggleOn)
                }
                NavigationLink(value: SidebarItem.all) {
                    Text(SidebarItem.all.title)
                }
                NavigationLink(value: SidebarItem.favorites) {
                    Text(SidebarItem.favorites.title)
                }
                NavigationLink(value: SidebarItem.recents) {
                    Text(SidebarItem.recents.title)
                }
            }
            
            Section("Collections") {
                ForEach(recipeBox.collections, id: \.self) { collectionName in
                    NavigationLink(value: SidebarItem.collection(collectionName)) {
                        Text(collectionName)
                    }
                }
            }
        }
    }
}
