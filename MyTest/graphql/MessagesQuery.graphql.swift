// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class MessagesQuery: GraphQLQuery {
  public static let operationName: String = "Messages"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query Messages($type: MessageType, $read: Boolean, $skip: Int!, $limit: Int!) {
        messages(type: $type, read: $read, skip: $skip, limit: $limit) {
          __typename
          id
          type
          time
          sender {
            __typename
            id
            username
            avatar
          }
          title
          content
          read
          refer {
            __typename
            ... on Reply {
              id
              post {
                __typename
                id
                title
                digest
                time
              }
              reply_at {
                __typename
                id
                content
                time
              }
            }
            ... on Post {
              id
              title
              digest
              content
              time
            }
          }
        }
      }
      """
    ))

  public var type: GraphQLNullable<GraphQLEnum<MySchema.MessageType>>
  public var read: GraphQLNullable<Bool>
  public var skip: Int
  public var limit: Int

  public init(
    type: GraphQLNullable<GraphQLEnum<MySchema.MessageType>>,
    read: GraphQLNullable<Bool>,
    skip: Int,
    limit: Int
  ) {
    self.type = type
    self.read = read
    self.skip = skip
    self.limit = limit
  }

  public var __variables: Variables? { [
    "type": type,
    "read": read,
    "skip": skip,
    "limit": limit
  ] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Query }
    public static var __selections: [Selection] { [
      .field("messages", [Message].self, arguments: [
        "type": .variable("type"),
        "read": .variable("read"),
        "skip": .variable("skip"),
        "limit": .variable("limit")
      ]),
    ] }

    ///  消息列表
    public var messages: [Message] { __data["messages"] }

    /// Message
    ///
    /// Parent Type: `Message`
    public struct Message: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.Message }
      public static var __selections: [Selection] { [
        .field("id", MySchema.ID.self),
        .field("type", GraphQLEnum<MySchema.MessageType>.self),
        .field("time", MySchema.DateTime.self),
        .field("sender", Sender?.self),
        .field("title", String.self),
        .field("content", String.self),
        .field("read", Bool.self),
        .field("refer", Refer?.self),
      ] }

      /// 消息ID
      public var id: MySchema.ID { __data["id"] }
      /// 消息类型
      public var type: GraphQLEnum<MySchema.MessageType> { __data["type"] }
      /// 时间
      public var time: MySchema.DateTime { __data["time"] }
      /// 发送者
      public var sender: Sender? { __data["sender"] }
      /// 标题
      public var title: String { __data["title"] }
      /// 内容
      public var content: String { __data["content"] }
      /// 已读
      public var read: Bool { __data["read"] }
      /// 来源 LIKE为Post, COMMENT/REPLY为Reply
      public var refer: Refer? { __data["refer"] }

      /// Message.Sender
      ///
      /// Parent Type: `User`
      public struct Sender: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.User }
        public static var __selections: [Selection] { [
          .field("id", MySchema.ID.self),
          .field("username", String.self),
          .field("avatar", String.self),
        ] }

        /// 用户ID
        public var id: MySchema.ID { __data["id"] }
        /// 用户名
        public var username: String { __data["username"] }
        /// 头像URL
        public var avatar: String { __data["avatar"] }
      }

      /// Message.Refer
      ///
      /// Parent Type: `MessageRefer`
      public struct Refer: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Unions.MessageRefer }
        public static var __selections: [Selection] { [
          .inlineFragment(AsReply.self),
          .inlineFragment(AsPost.self),
        ] }

        public var asReply: AsReply? { _asInlineFragment() }
        public var asPost: AsPost? { _asInlineFragment() }

        /// Message.Refer.AsReply
        ///
        /// Parent Type: `Reply`
        public struct AsReply: MySchema.InlineFragment {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.Reply }
          public static var __selections: [Selection] { [
            .field("id", MySchema.ID.self),
            .field("post", Post?.self),
            .field("reply_at", Reply_at?.self),
          ] }

          /// 回复ID
          public var id: MySchema.ID { __data["id"] }
          /// 帖子
          public var post: Post? { __data["post"] }
          /// 回复对象 (二级回复特有 一级回复为null)
          public var reply_at: Reply_at? { __data["reply_at"] }

          /// Message.Refer.AsReply.Post
          ///
          /// Parent Type: `Post`
          public struct Post: MySchema.SelectionSet {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public static var __parentType: ParentType { MySchema.Objects.Post }
            public static var __selections: [Selection] { [
              .field("id", MySchema.ID.self),
              .field("title", String.self),
              .field("digest", String.self),
              .field("time", MySchema.DateTime.self),
            ] }

            /// 帖子ID
            public var id: MySchema.ID { __data["id"] }
            /// 标题
            public var title: String { __data["title"] }
            /// 摘要
            public var digest: String { __data["digest"] }
            /// 发帖时间
            public var time: MySchema.DateTime { __data["time"] }
          }

          /// Message.Refer.AsReply.Reply_at
          ///
          /// Parent Type: `Reply`
          public struct Reply_at: MySchema.SelectionSet {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public static var __parentType: ParentType { MySchema.Objects.Reply }
            public static var __selections: [Selection] { [
              .field("id", MySchema.ID.self),
              .field("content", String.self),
              .field("time", MySchema.DateTime.self),
            ] }

            /// 回复ID
            public var id: MySchema.ID { __data["id"] }
            /// 回复文本
            public var content: String { __data["content"] }
            /// 回复时间
            public var time: MySchema.DateTime { __data["time"] }
          }
        }

        /// Message.Refer.AsPost
        ///
        /// Parent Type: `Post`
        public struct AsPost: MySchema.InlineFragment {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.Post }
          public static var __selections: [Selection] { [
            .field("id", MySchema.ID.self),
            .field("title", String.self),
            .field("digest", String.self),
            .field("content", String.self),
            .field("time", MySchema.DateTime.self),
          ] }

          /// 帖子ID
          public var id: MySchema.ID { __data["id"] }
          /// 标题
          public var title: String { __data["title"] }
          /// 摘要
          public var digest: String { __data["digest"] }
          /// 正文
          public var content: String { __data["content"] }
          /// 发帖时间
          public var time: MySchema.DateTime { __data["time"] }
        }
      }
    }
  }
}
