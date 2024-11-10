
import Foundation

protocol MessageDataSource {
    func getMessages() -> [Message]
}
