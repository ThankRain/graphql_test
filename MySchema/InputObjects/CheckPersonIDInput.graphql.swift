// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct CheckPersonIDInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    person_id: String
  ) {
    __data = InputDict([
      "person_id": person_id
    ])
  }

  public var person_id: String {
    get { __data["person_id"] }
    set { __data["person_id"] = newValue }
  }
}
