
import Foundation

struct MessageRepositoryImpl: MessageRepository {
    
    var dataSource: MessageDataSource
    
    func getMessages() -> [Message] {
        return dataSource.getMessages()
    }
}
