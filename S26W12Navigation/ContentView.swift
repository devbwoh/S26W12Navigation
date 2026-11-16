import SwiftUI

struct Song: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let artist: String
    let rating: Int
    let lyrics: String
}

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
    @State private var songs: [Song] = [
            Song(title: "밤의 공기", artist: "윤슬", rating: 5, lyrics: "차가운 도시의 불빛 속에서 널 찾아 헤매"),
            Song(title: "별빛 비행", artist: "Luminous", rating: 4, lyrics: "쏟아지는 별빛 아래 너와 나의 비밀스런 시선"),
            Song(title: "너라는 멜로디", artist: "강우", rating: 5, lyrics: "알면서도 빠져드는 위험한 이 멜로디"),
            Song(title: "Cherry Blossom", artist: "Cherry Chu", rating: 3, lyrics: "심장이 쿵 하고 내려앉는 이 떨리는 순간"),
            Song(title: "Eclipse", artist: "VORTEX", rating: 4, lyrics: "달이 태양을 가리는 그 찰나의 순간에"),
            Song(title: "비 오는 날의 왈츠", artist: "민우", rating: 4, lyrics: "창가에 부딪히는 빗소리가 널 떠올리게 해"),
            Song(title: "Supernova", artist: "SIREN", rating: 5, lyrics: "우주 끝까지 터져버릴 것 같은 내 맘을 봐"),
            Song(title: "가상 연애", artist: "은하", rating: 3, lyrics: "가상 현실 속에서도 너의 온도가 느껴져"),
            Song(title: "설탕 러시", artist: "봄", rating: 4, lyrics: "달콤함에 취해버린 내 두 눈엔 너만 보여"),
            Song(title: "다시 숨쉬기", artist: "NEVERMORE", rating: 5, lyrics: "숨이 멎을 듯한 어둠 뒤에 찾아온 너의 미소")
        ]
    
    var body: some View {
        NavigationStack {
            List(songs) { song in
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

struct SongDetailView: View {
    let song: Song

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 32) {
                HStack {
                    Text(song.artist)
                        .font(.title2)
                        .foregroundStyle(.secondary)
                    Spacer()
                    Text("⭐ \(song.rating)")
                        .font(.title2)
                }
                Text(song.lyrics)
            }
            .padding()
        }
        .navigationTitle(song.title)
        .navigationBarTitleDisplayMode(.large)
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
