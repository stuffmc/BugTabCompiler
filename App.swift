import SwiftUI

@main
struct My: App {
    @State private var selection = "2"
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selection) {
                Tab {
                    Text("1")
                }

                Tab(value: "2") {
                    Text("2")
                }
            }
        }
    }
}
