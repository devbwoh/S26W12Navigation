import SwiftUI

enum Routes {
    case artist
    case album
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(value: Routes.artist) {
                Text("Artist 화면으로 이동")
            }
            NavigationLink(value: Routes.album) {
                Text("Album 화면으로 이동")
            }
            .navigationDestination(for: Routes.self) { target in
                switch (target) {
                case .artist:
                    ArtistView()
                case .album:
                    AlbumView()
                }
            }
            .navigationTitle("Song")
        }
    }
}

struct ArtistView: View {
    var body: some View {
        Text("가수 화면")
            .navigationTitle("Artist")
    }
}

struct AlbumView: View {
    var body: some View {
        Text("앨범 화면")
            .navigationTitle("Album")
    }
}


#Preview {
    ContentView()
}
