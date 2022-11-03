// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct UpdatePostInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    content: GraphQLNullable<String> = nil,
    digest: GraphQLNullable<String> = nil,
    id: MySchema.ID,
    title: GraphQLNullable<String> = nil
  ) {
    __data = InputDict([
      "content": content,
      "digest": digest,
      "id": id,
      "title": title
    ])
  }

  public var content: GraphQLNullable<String> {
    get { __data["content"] }
    set { __data["content"] = newValue }
  }

  public var digest: GraphQLNullable<String> {
    get { __data["digest"] }
    set { __data["digest"] = newValue }
  }

  public var id: MySchema.ID {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  public var title: GraphQLNullable<String> {
    get { __data["title"] }
    set { __data["title"] = newValue }
  }
}
