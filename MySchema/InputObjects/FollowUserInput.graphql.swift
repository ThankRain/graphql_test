// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct FollowUserInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    follow: Bool,
    id: MySchema.ID
  ) {
    __data = InputDict([
      "follow": follow,
      "id": id
    ])
  }

  public var follow: Bool {
    get { __data["follow"] }
    set { __data["follow"] = newValue }
  }

  public var id: MySchema.ID {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }
}
