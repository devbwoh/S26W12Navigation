import SwiftUI

struct SongView: View {
    @State private var viewModel = SongViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.songs) { song in
                NavigationLink(value: song) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(song.title)
                            .font(.headline)
                            .foregroundStyle(.primary)
                        Text(song.artist)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationDestination(for: Song.self) { song in
                SongDetailView(song: song)
            }
        }
    }
}
