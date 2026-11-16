import SwiftUI

struct AlbumView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Text("앨범 화면")
                Button("추천 앨범 신곡") {
                    let newSong = Song(title: "Miracle", artist: "AURORA", rating: 5, lyrics: "캄캄한 밤 창가에 내리는 별빛처럼\n조용히 네 마음을 두드리는 이 노래\n잠시 눈을 감아봐 멈춰버린 시간 속에서\n우리가 함께 그린 작은 기적이 시작돼")
                    path.append(newSong)
                }
            }
            .navigationDestination(for: Song.self) { song in
                SongDetailView(song: song)
            }
        }
    }
}
