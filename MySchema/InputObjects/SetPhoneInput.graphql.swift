// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct SetPhoneInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    phone: String,
    phone_verify_code: String
  ) {
    __data = InputDict([
      "phone": phone,
      "phone_verify_code": phone_verify_code
    ])
  }

  public var phone: String {
    get { __data["phone"] }
    set { __data["phone"] = newValue }
  }

  public var phone_verify_code: String {
    get { __data["phone_verify_code"] }
    set { __data["phone_verify_code"] = newValue }
  }
}
