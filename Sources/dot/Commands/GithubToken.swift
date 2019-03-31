//
//  Token.swift
//  dot
//
//  Created by Atsushi Miyake on 2019/03/31.
//

import Foundation
import Commandy

enum GithubToken: Command {
    static func run() throws {
        guard let githubAccessToken = Arguments.cached.nonOptionArguments.first else { throw GithubToken.Error.notFoundToken }
        UserDefaults.standard.setValue(githubAccessToken, forKey: "GITHUB_ACCESS_TOKEN")
        exit(EXIT_SUCCESS)
    }
}

extension GithubToken {
    enum Error: Swift.Error {
        case notFoundToken
    }
}
