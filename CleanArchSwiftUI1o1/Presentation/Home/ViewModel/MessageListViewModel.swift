
import Foundation

// 1
class MessageListViewModel: ObservableObject {       //ObservableObject==ChangeNotifier
    
    // 2
    var getMessagesUseCase = GetMessagesUseCase(repository: MessageRepositoryImpl(dataSource: MessageDataSourceImpl()))
    
    // 3
    @Published var messages: [Message] = []          //@Published==notifyListeners
    
    // 4
    func getMessages() {
        let result = getMessagesUseCase.execute()
        switch result {
        case .success(let messages):
            self.messages = messages
        case .failure(let error):
            print(error)
        }
    }
}
