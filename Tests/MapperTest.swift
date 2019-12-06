//
//  MapperTest.swift
//  ModelMapperTests
//
//  Created by mac on 12/6/19.
//  Copyright © 2019 sha. All rights reserved.
//

import XCTest

class MapperTest: XCTestCase {

    private var userDto: UserDto!

    override func setUp() {
        userDto = UserDto(name: "user", email: "email@domain.com")
    }

    func testMap_returnCorrectOutput() {
        let user = UserMapper().map(userDto)
        XCTAssertEqual(user.name, userDto.name)
        XCTAssertEqual(user.email, userDto.email)
    }


}
