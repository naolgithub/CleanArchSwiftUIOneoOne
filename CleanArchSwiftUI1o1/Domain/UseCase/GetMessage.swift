
import Foundation

// 1
enum UseCaseError: Error {
    case networkError, decodingError, undefinedError
}

// 2
protocol GetMessagesProtocol {
    func execute() -> Result<[Message], UseCaseError>
}

// 3
struct GetMessagesUseCase: GetMessagesProtocol {
    var repository: MessageRepository
    
    
    func execute() -> Result<[Message], UseCaseError> {
        let messages = repository.getMessages()
        return .success(messages)
    }
}
