// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct GetUploadTokenInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    type: GraphQLEnum<MySchema.UploadType>
  ) {
    __data = InputDict([
      "type": type
    ])
  }

  public var type: GraphQLEnum<MySchema.UploadType> {
    get { __data["type"] }
    set { __data["type"] = newValue }
  }
}
