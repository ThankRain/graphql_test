// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class ReplyQuery: GraphQLQuery {
  public static let operationName: String = "Reply"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query Reply($id: ID!) {
        reply(id: $id) {
          __typename
          id
          author {
            __typename
            id
            avatar
            username
          }
          time
          content
          sub_reply {
            __typename
            id
            author {
              __typename
              id
              avatar
              username
            }
            reply_at {
              __typename
              id
              author {
                __typename
                id
                username
              }
              content
            }
            time
            content
          }
        }
      }
      """
    ))

  public var id: MySchema.ID

  public init(id: MySchema.ID) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Query }
    public static var __selections: [Selection] { [
      .field("reply", Reply.self, arguments: ["id": .variable("id")]),
    ] }

    /// 按ID查询回复信息
    public var reply: Reply { __data["reply"] }

    /// Reply
    ///
    /// Parent Type: `Reply`
    public struct Reply: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.Reply }
      public static var __selections: [Selection] { [
        .field("id", MySchema.ID.self),
        .field("author", Author.self),
        .field("time", MySchema.DateTime.self),
        .field("content", String.self),
        .field("sub_reply", [Sub_reply]?.self),
      ] }

      /// 回复ID
      public var id: MySchema.ID { __data["id"] }
      /// 作者
      public var author: Author { __data["author"] }
      /// 回复时间
      public var time: MySchema.DateTime { __data["time"] }
      /// 回复文本
      public var content: String { __data["content"] }
      /// 子回复   (一级回复特有 二级回复为null)
      public var sub_reply: [Sub_reply]? { __data["sub_reply"] }

      /// Reply.Author
      ///
      /// Parent Type: `User`
      public struct Author: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.User }
        public static var __selections: [Selection] { [
          .field("id", MySchema.ID.self),
          .field("avatar", String.self),
          .field("username", String.self),
        ] }

        /// 用户ID
        public var id: MySchema.ID { __data["id"] }
        /// 头像URL
        public var avatar: String { __data["avatar"] }
        /// 用户名
        public var username: String { __data["username"] }
      }

      /// Reply.Sub_reply
      ///
      /// Parent Type: `Reply`
      public struct Sub_reply: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.Reply }
        public static var __selections: [Selection] { [
          .field("id", MySchema.ID.self),
          .field("author", Author.self),
          .field("reply_at", Reply_at?.self),
          .field("time", MySchema.DateTime.self),
          .field("content", String.self),
        ] }

        /// 回复ID
        public var id: MySchema.ID { __data["id"] }
        /// 作者
        public var author: Author { __data["author"] }
        /// 回复对象 (二级回复特有 一级回复为null)
        public var reply_at: Reply_at? { __data["reply_at"] }
        /// 回复时间
        public var time: MySchema.DateTime { __data["time"] }
        /// 回复文本
        public var content: String { __data["content"] }

        /// Reply.Sub_reply.Author
        ///
        /// Parent Type: `User`
        public struct Author: MySchema.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.User }
          public static var __selections: [Selection] { [
            .field("id", MySchema.ID.self),
            .field("avatar", String.self),
            .field("username", String.self),
          ] }

          /// 用户ID
          public var id: MySchema.ID { __data["id"] }
          /// 头像URL
          public var avatar: String { __data["avatar"] }
          /// 用户名
          public var username: String { __data["username"] }
        }

        /// Reply.Sub_reply.Reply_at
        ///
        /// Parent Type: `Reply`
        public struct Reply_at: MySchema.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.Reply }
          public static var __selections: [Selection] { [
            .field("id", MySchema.ID.self),
            .field("author", Author.self),
            .field("content", String.self),
          ] }

          /// 回复ID
          public var id: MySchema.ID { __data["id"] }
          /// 作者
          public var author: Author { __data["author"] }
          /// 回复文本
          public var content: String { __data["content"] }

          /// Reply.Sub_reply.Reply_at.Author
          ///
          /// Parent Type: `User`
          public struct Author: MySchema.SelectionSet {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public static var __parentType: ParentType { MySchema.Objects.User }
            public static var __selections: [Selection] { [
              .field("id", MySchema.ID.self),
              .field("username", String.self),
            ] }

            /// 用户ID
            public var id: MySchema.ID { __data["id"] }
            /// 用户名
            public var username: String { __data["username"] }
          }
        }
      }
    }
  }
}
