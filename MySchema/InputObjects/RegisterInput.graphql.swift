// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct RegisterInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    email_verify_code: String,
    is_alumni: Bool,
    password: String,
    person_id: String,
    username: String
  ) {
    __data = InputDict([
      "email_verify_code": email_verify_code,
      "is_alumni": is_alumni,
      "password": password,
      "person_id": person_id,
      "username": username
    ])
  }

  public var email_verify_code: String {
    get { __data["email_verify_code"] }
    set { __data["email_verify_code"] = newValue }
  }

  public var is_alumni: Bool {
    get { __data["is_alumni"] }
    set { __data["is_alumni"] = newValue }
  }

  public var password: String {
    get { __data["password"] }
    set { __data["password"] = newValue }
  }

  public var person_id: String {
    get { __data["person_id"] }
    set { __data["person_id"] = newValue }
  }

  public var username: String {
    get { __data["username"] }
    set { __data["username"] = newValue }
  }
}
