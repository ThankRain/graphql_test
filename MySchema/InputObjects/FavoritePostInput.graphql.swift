// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct FavoritePostInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    favorite: Bool,
    id: MySchema.ID
  ) {
    __data = InputDict([
      "favorite": favorite,
      "id": id
    ])
  }

  public var favorite: Bool {
    get { __data["favorite"] }
    set { __data["favorite"] = newValue }
  }

  public var id: MySchema.ID {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }
}
