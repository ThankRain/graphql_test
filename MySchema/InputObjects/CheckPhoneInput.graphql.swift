// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct CheckPhoneInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    phone: String
  ) {
    __data = InputDict([
      "phone": phone
    ])
  }

  public var phone: String {
    get { __data["phone"] }
    set { __data["phone"] = newValue }
  }
}
