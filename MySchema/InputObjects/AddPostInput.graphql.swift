// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct AddPostInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    category: GraphQLNullable<[MySchema.ID?]> = nil,
    content: String,
    digest: String,
    title: String,
    topic: GraphQLNullable<MySchema.ID> = nil
  ) {
    __data = InputDict([
      "category": category,
      "content": content,
      "digest": digest,
      "title": title,
      "topic": topic
    ])
  }

  public var category: GraphQLNullable<[MySchema.ID?]> {
    get { __data["category"] }
    set { __data["category"] = newValue }
  }

  public var content: String {
    get { __data["content"] }
    set { __data["content"] = newValue }
  }

  public var digest: String {
    get { __data["digest"] }
    set { __data["digest"] = newValue }
  }

  public var title: String {
    get { __data["title"] }
    set { __data["title"] = newValue }
  }

  public var topic: GraphQLNullable<MySchema.ID> {
    get { __data["topic"] }
    set { __data["topic"] = newValue }
  }
}
