//
//  OptionalInputListMapperTest.swift
//  ModelMapperTests
//
//  Created by mac on 12/6/19.
//  Copyright © 2019 sha. All rights reserved.
//

import XCTest
@testable import ModelMapper

class OptionalListMapperTest: XCTestCase {

    private var userDtoList: [UserDto]?

    override func setUp() {
        userDtoList = [
            UserDto(name: "user1", email: "email1@domain.com"),
            UserDto(name: "user2", email: "email2@domain.com"),
            UserDto(name: "user3", email: "email3@domain.com")]
    }

    func testMap_returnCorrectOutput() {
        let users = OptionalListMapper(UserMapper()).map(userDtoList)

        XCTAssert(users?.count == 3)
        users!.enumerated().forEach { (index, user) in
            XCTAssertEqual(user.email, userDtoList?[index].email)
        }
    }

    func testMap_returnNilIfInputNil() {
        userDtoList = nil
        let users = OptionalListMapper(UserMapper()).map(userDtoList)
        XCTAssert(users == nil)
    }

    func testMap_returnNilIfInputEmpty() {
        userDtoList = []
        let users = OptionalListMapper(UserMapper()).map(userDtoList)
        XCTAssert(users == nil)
    }

}
