// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct ReadMessagesInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    type: GraphQLEnum<MySchema.MessageType>
  ) {
    __data = InputDict([
      "type": type
    ])
  }

  public var type: GraphQLEnum<MySchema.MessageType> {
    get { __data["type"] }
    set { __data["type"] = newValue }
  }
}
