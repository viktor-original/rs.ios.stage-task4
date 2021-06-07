import Foundation

final class CallStation {
    var usersList = Set<User>()
    var callsList: [Call] = []
}

extension CallStation: Station {
    func users() -> [User] {
        Array(usersList)
    }
    
    func add(user: User) {
        usersList.insert(user)
    }
    
    func remove(user: User) {
        usersList.remove(user)
    }
    
    func execute(action: CallAction) -> CallID? {
        nil
    }
    
    func calls() -> [Call] {
        []
    }
    
    func calls(user: User) -> [Call] {
        []
    }
    
    func call(id: CallID) -> Call? {
        nil
    }
    
    func currentCall(user: User) -> Call? {
        nil
    }
}
