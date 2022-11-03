// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct ChangePasswordInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    email_verify_code: String,
    is_alumni: Bool,
    new_password: String,
    person_id: String
  ) {
    __data = InputDict([
      "email_verify_code": email_verify_code,
      "is_alumni": is_alumni,
      "new_password": new_password,
      "person_id": person_id
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

  public var new_password: String {
    get { __data["new_password"] }
    set { __data["new_password"] = newValue }
  }

  public var person_id: String {
    get { __data["person_id"] }
    set { __data["person_id"] = newValue }
  }
}
