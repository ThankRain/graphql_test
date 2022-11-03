// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct SendEmailCodeInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    is_alumni: Bool,
    person_id: String
  ) {
    __data = InputDict([
      "is_alumni": is_alumni,
      "person_id": person_id
    ])
  }

  public var is_alumni: Bool {
    get { __data["is_alumni"] }
    set { __data["is_alumni"] = newValue }
  }

  public var person_id: String {
    get { __data["person_id"] }
    set { __data["person_id"] = newValue }
  }
}
