// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class UserRepliesPostQuery: GraphQLQuery {
  public static let operationName: String = "UserRepliesPost"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query UserRepliesPost($id: ID!, $time: DateTime!, $limit: Int!) {
        user(id: $id) {
          __typename
          replies(time: $time, limit: $limit) {
            __typename
            pageInfo {
              __typename
              end_time
              has_next_page
            }
            nodes {
              __typename
              id
              time
              content
              author {
                __typename
                id
                avatar
                username
              }
              post {
                __typename
                id
                author {
                  __typename
                  username
                }
                title
                digest
              }
            }
          }
        }
      }
      """
    ))

  public var id: MySchema.ID
  public var time: MySchema.DateTime
  public var limit: Int

  public init(
    id: MySchema.ID,
    time: MySchema.DateTime,
    limit: Int
  ) {
    self.id = id
    self.time = time
    self.limit = limit
  }

  public var __variables: Variables? { [
    "id": id,
    "time": time,
    "limit": limit
  ] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Query }
    public static var __selections: [Selection] { [
      .field("user", User.self, arguments: ["id": .variable("id")]),
    ] }

    /// 按ID查询用户信息
    public var user: User { __data["user"] }

    /// User
    ///
    /// Parent Type: `User`
    public struct User: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.User }
      public static var __selections: [Selection] { [
        .field("replies", Replies.self, arguments: [
          "time": .variable("time"),
          "limit": .variable("limit")
        ]),
      ] }

      /// 发过的回复
      public var replies: Replies { __data["replies"] }

      /// User.Replies
      ///
      /// Parent Type: `ReplyConnection`
      public struct Replies: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.ReplyConnection }
        public static var __selections: [Selection] { [
          .field("pageInfo", PageInfo.self),
          .field("nodes", [Node].self),
        ] }

        public var pageInfo: PageInfo { __data["pageInfo"] }
        public var nodes: [Node] { __data["nodes"] }

        /// User.Replies.PageInfo
        ///
        /// Parent Type: `PageInfo`
        public struct PageInfo: MySchema.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.PageInfo }
          public static var __selections: [Selection] { [
            .field("end_time", MySchema.DateTime.self),
            .field("has_next_page", Bool.self),
          ] }

          public var end_time: MySchema.DateTime { __data["end_time"] }
          public var has_next_page: Bool { __data["has_next_page"] }
        }

        /// User.Replies.Node
        ///
        /// Parent Type: `Reply`
        public struct Node: MySchema.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.Reply }
          public static var __selections: [Selection] { [
            .field("id", MySchema.ID.self),
            .field("time", MySchema.DateTime.self),
            .field("content", String.self),
            .field("author", Author.self),
            .field("post", Post?.self),
          ] }

          /// 回复ID
          public var id: MySchema.ID { __data["id"] }
          /// 回复时间
          public var time: MySchema.DateTime { __data["time"] }
          /// 回复文本
          public var content: String { __data["content"] }
          /// 作者
          public var author: Author { __data["author"] }
          /// 帖子
          public var post: Post? { __data["post"] }

          /// User.Replies.Node.Author
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

          /// User.Replies.Node.Post
          ///
          /// Parent Type: `Post`
          public struct Post: MySchema.SelectionSet {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public static var __parentType: ParentType { MySchema.Objects.Post }
            public static var __selections: [Selection] { [
              .field("id", MySchema.ID.self),
              .field("author", Author.self),
              .field("title", String.self),
              .field("digest", String.self),
            ] }

            /// 帖子ID
            public var id: MySchema.ID { __data["id"] }
            /// 作者
            public var author: Author { __data["author"] }
            /// 标题
            public var title: String { __data["title"] }
            /// 摘要
            public var digest: String { __data["digest"] }

            /// User.Replies.Node.Post.Author
            ///
            /// Parent Type: `User`
            public struct Author: MySchema.SelectionSet {
              public let __data: DataDict
              public init(data: DataDict) { __data = data }

              public static var __parentType: ParentType { MySchema.Objects.User }
              public static var __selections: [Selection] { [
                .field("username", String.self),
              ] }

              /// 用户名
              public var username: String { __data["username"] }
            }
          }
        }
      }
    }
  }
}
