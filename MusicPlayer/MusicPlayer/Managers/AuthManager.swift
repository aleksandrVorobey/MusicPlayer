//
//  AuthManager.swift
//  MusicPlayer
//
//  Created by admin on 07.06.2022.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    private init() {}
    
    struct Constants {
        static let clientID = "59b5bd9b0da84011bf8c0654ea151e29"
        static let clientSecret = "99c0f9717feb4116b831ad1d0fc4f1ae"
    }
    
    var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    func exchangeCodeForToken(code: String, completion: @escaping (Bool) -> Void) {
        
    }
    
    func refreshAccessToken() {
        
    }
    
    func casheToken() {
        
    }
}
