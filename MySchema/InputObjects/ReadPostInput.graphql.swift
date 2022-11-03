// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct ReadPostInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    id: MySchema.ID
  ) {
    __data = InputDict([
      "id": id
    ])
  }

  public var id: MySchema.ID {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }
}
