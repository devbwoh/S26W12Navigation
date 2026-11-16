import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Songs", systemImage: "list.bullet") {
                SongView()
            }
            
            Tab("Artist", systemImage: "person") {
                ArtistView()
            }
            .badge(2)
            
            Tab("Album", systemImage: "opticaldisc") {
                AlbumView()
            }
            .badge("!")
        }
    }
}


#Preview {
    ContentView()
}
