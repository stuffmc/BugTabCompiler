import SwiftUI

@main
struct My: App {
    @State private var selection = "2"
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selection) {
                Tab { // 'buildExpression' is unavailable: this expression does not conform to 'TabContent'
                    Text("1")
                }

                Tab(value: "2") {
                    Text("2")
                }
            }
        }
    }
}

struct Content: View {
    var body: some View {
        TabView {
            Tab {
                Text("1")
            }

//            Tab(value: "2") { // Now uncomment this...
//                Text("2")
//            }
        }
    }
}
