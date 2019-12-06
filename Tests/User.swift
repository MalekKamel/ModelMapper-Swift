//
// Created by mac on 12/6/19.
// Copyright (c) 2019 sha. All rights reserved.
//

import ModelMapper

struct User {
    let name: String
    let email: String
}

struct UserDto {
    let name: String
    let email: String
}

struct UserMapper: Mapper {
    public typealias I = UserDto
    public typealias O = User

    public init() {}

    func map(_ input: UserDto) -> User {
        User(name: input.name, email: input.email)
    }
}