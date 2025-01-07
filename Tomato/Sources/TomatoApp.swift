import SwiftUI

@main
struct TomatoApp: App {
    let persistenceController = PersistenceController()

    var body: some Scene {
        WindowGroup {
            LetterListView(list: [])
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
