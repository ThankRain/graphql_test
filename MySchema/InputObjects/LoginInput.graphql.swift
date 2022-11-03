// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct LoginInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    password: String,
    person_id: String
  ) {
    __data = InputDict([
      "password": password,
      "person_id": person_id
    ])
  }

  public var password: String {
    get { __data["password"] }
    set { __data["password"] = newValue }
  }

  public var person_id: String {
    get { __data["person_id"] }
    set { __data["person_id"] = newValue }
  }
}
