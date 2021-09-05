//播放音频
import Foundation
import AVFoundation

//// MARK: - AUDIO PLAYER

var audioPlayer: AVAudioPlayer?

func playSound(sound: String ,type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("error")
        }
    }
}

//do {
//    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
//    audioPlayer?.play()
//} catch {
//    print("error")
//}
