// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct UpdateReplyInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    content: String,
    id: MySchema.ID
  ) {
    __data = InputDict([
      "content": content,
      "id": id
    ])
  }

  public var content: String {
    get { __data["content"] }
    set { __data["content"] = newValue }
  }

  public var id: MySchema.ID {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }
}
