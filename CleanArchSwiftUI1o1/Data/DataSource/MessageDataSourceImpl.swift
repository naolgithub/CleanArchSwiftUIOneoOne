

import Foundation

struct MessageDataSourceImpl: MessageDataSource {
    
    func getMessages() -> [Message] {
        return [
            Message(id: 1, text: "Hello World"),
            Message(id: 2, text: "Hello World 2"),
            Message(id: 3, text: "Hello World 3"),
            Message(id: 19, text: "Hello World 33"),
            Message(id: 29, text: "Hello World 234"),
            Message(id: 39, text: "Hello World 323")
        ]
    }
}
