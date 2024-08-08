import Foundation

class UserSession_Private_Set  {
    private(set) var isLoggedIn: Bool = false
    
    func logIn() {
        isLoggedIn = true
    }
    
    func logOut() {
        isLoggedIn = false
    }
}

class UserSession_Private  {
    private var isLoggedIn: Bool = false
    
    func logIn() {
        isLoggedIn = true
    }
    
    func logOut() {
        isLoggedIn = false
    }
}

// Accessing Properties
class AccessUserSession {
    var userSession_Ps = UserSession_Private_Set()
    var userSession_P = UserSession_Private()
    
    func checkUserSessionAccessForPrivateSet() -> Bool{
        userSession_Ps.isLoggedIn
    }
    // Error : 'isLoggedIn' is inaccessible due to 'private' protection level
    func checkUserSessionAccessForPrivate() -> Bool{
        userSession_P.isLoggedIn
    }
}

// Alternative Approach: Using a Computed Property

class UserSession_Private_1 {
    private var loggedInStatus: Bool = false
    
    // Computed property to expose the login status
    var isLoggedIn: Bool {
        return loggedInStatus
    }
    
    func logIn() {
        loggedInStatus = true
    }
    
    func logOut() {
        loggedInStatus = false
    }
}
