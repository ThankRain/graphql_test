// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct LikePostInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    id: MySchema.ID,
    like: Bool
  ) {
    __data = InputDict([
      "id": id,
      "like": like
    ])
  }

  public var id: MySchema.ID {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  public var like: Bool {
    get { __data["like"] }
    set { __data["like"] = newValue }
  }
}
