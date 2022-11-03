// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct UpdateUserInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    avatar: GraphQLNullable<String> = nil,
    username: GraphQLNullable<String> = nil
  ) {
    __data = InputDict([
      "avatar": avatar,
      "username": username
    ])
  }

  public var avatar: GraphQLNullable<String> {
    get { __data["avatar"] }
    set { __data["avatar"] = newValue }
  }

  public var username: GraphQLNullable<String> {
    get { __data["username"] }
    set { __data["username"] = newValue }
  }
}
