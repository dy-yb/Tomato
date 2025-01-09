import SwiftUI

@main
struct TomatoApp: App {
    @StateObject private var persistenceController = CoreDataController()

    var body: some Scene {
        WindowGroup {
            LetterListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
