import SwiftUI

struct AlbumView: View {
    @State private var viewModel = AlbumViewModel()
    
    var body: some View {
        NavigationStack(path: $viewModel.path) {
            VStack {
                Text("앨범 화면")
                Button("추천 앨범 신곡") {
                    viewModel.navigateToNewSong()
                }
            }
            .navigationDestination(for: Song.self) { song in
                SongDetailView(song: song)
            }
        }
    }
}
