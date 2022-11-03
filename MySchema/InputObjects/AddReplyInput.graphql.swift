// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct AddReplyInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    content: String,
    post: MySchema.ID,
    reply_at: GraphQLNullable<MySchema.ID> = nil
  ) {
    __data = InputDict([
      "content": content,
      "post": post,
      "reply_at": reply_at
    ])
  }

  public var content: String {
    get { __data["content"] }
    set { __data["content"] = newValue }
  }

  public var post: MySchema.ID {
    get { __data["post"] }
    set { __data["post"] = newValue }
  }

  /// 二级回复的回复对象 一级回复忽略即可
  public var reply_at: GraphQLNullable<MySchema.ID> {
    get { __data["reply_at"] }
    set { __data["reply_at"] = newValue }
  }
}
