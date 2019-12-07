//
//  ViewController.swift
//  Example
//
//  Created by mac on 12/6/19.
//  Copyright © 2019 sha. All rights reserved.
//

import UIKit
import ModelMapper

class ViewController: UIViewController {
    let userDto = UserDto(name: "user", email: "email@domain.com")

    override func viewDidLoad() {
        super.viewDidLoad()
        mapModel()
        mapList()
        mapFromOptionalList()
        mapToOptionalList()
    }

    private func mapModel() {
        print(">>> map UserDto to User")

        let user: User = UserDtoMapper().map(userDto)
        print(user.name)
        print(user.email)
    }

    private func mapList() {
        print(">>> map [UserDto] to [User]")

        let input: [UserDto] = [userDto, userDto]
        let users: [User] = ListMapper(UserDtoMapper()).map(input)
        print("users.count: \(users.count)")
    }

    /// produces empty if the input is nil
    private func mapFromOptionalList() {
        print(">>> map [UserDto]? to [User]")

        var input: [UserDto]? = nil
        // map [UserDto]? to [User]
        // produces empty array as the array is nil
        var users: [User] = OptionalInputListMapper(UserDtoMapper()).map(input)
        // prints 0
        print("users.count: \(users.count)")

        input = [userDto, userDto]
        users = OptionalInputListMapper(UserDtoMapper()).map(input)
        // prints 2
        print("users.count: \(users.count)")
    }

    /// produces nil if the input is empty
    private func mapToOptionalList() {
        print(">>> map [UserDto] to [User]?")

        var input: [UserDto] = []
        var users: [User]? = OptionalOutputListMapper(UserDtoMapper()).map(input)
        // prints 0 cause it's nil
        print("users.count: \(users?.count ?? 0), it's nil")

        input = [userDto, userDto]
        users = OptionalOutputListMapper(UserDtoMapper()).map(input)
        // prints 2
        print("users.count: \(users?.count ?? 0)")
    }
}

