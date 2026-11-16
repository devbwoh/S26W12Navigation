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

struct SongView: View {
    var body: some View {
        Text("노래 화면")
    }
}

struct ArtistView: View {
    var body: some View {
        Text("가수 화면")
    }
}

struct AlbumView: View {
    var body: some View {
        Text("앨범 화면")
    }
}


#Preview {
    ContentView()
}
