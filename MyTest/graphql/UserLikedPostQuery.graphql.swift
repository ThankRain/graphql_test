// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class UserLikedPostQuery: GraphQLQuery {
  public static let operationName: String = "UserLikedPost"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query UserLikedPost($id: ID!, $time: DateTime!, $limit: Int!) {
        user(id: $id) {
          __typename
          liked_posts(time: $time, limit: $limit) {
            __typename
            nodes {
              __typename
              id
              time
              reply_time
              title
              author {
                __typename
                id
                username
                avatar
              }
              content
              digest
              like_count
              reply_count
              liked
              favorite
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
        .field("liked_posts", Liked_posts.self, arguments: [
          "time": .variable("time"),
          "limit": .variable("limit")
        ]),
      ] }

      /// 赞过的帖子
      public var liked_posts: Liked_posts { __data["liked_posts"] }

      /// User.Liked_posts
      ///
      /// Parent Type: `PostConnection`
      public struct Liked_posts: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.PostConnection }
        public static var __selections: [Selection] { [
          .field("nodes", [Node].self),
        ] }

        public var nodes: [Node] { __data["nodes"] }

        /// User.Liked_posts.Node
        ///
        /// Parent Type: `Post`
        public struct Node: MySchema.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.Post }
          public static var __selections: [Selection] { [
            .field("id", MySchema.ID.self),
            .field("time", MySchema.DateTime.self),
            .field("reply_time", MySchema.DateTime.self),
            .field("title", String.self),
            .field("author", Author.self),
            .field("content", String.self),
            .field("digest", String.self),
            .field("like_count", Int.self),
            .field("reply_count", Int.self),
            .field("liked", Bool.self),
            .field("favorite", Bool.self),
          ] }

          /// 帖子ID
          public var id: MySchema.ID { __data["id"] }
          /// 发帖时间
          public var time: MySchema.DateTime { __data["time"] }
          /// 最后回复时间
          public var reply_time: MySchema.DateTime { __data["reply_time"] }
          /// 标题
          public var title: String { __data["title"] }
          /// 作者
          public var author: Author { __data["author"] }
          /// 正文
          public var content: String { __data["content"] }
          /// 摘要
          public var digest: String { __data["digest"] }
          /// 点赞数
          public var like_count: Int { __data["like_count"] }
          /// 回复数(含一级和二级回复)
          public var reply_count: Int { __data["reply_count"] }
          /// 是否已赞 未登录返回false
          public var liked: Bool { __data["liked"] }
          /// 是否已收藏 未登录返回false
          public var favorite: Bool { __data["favorite"] }

          /// User.Liked_posts.Node.Author
          ///
          /// Parent Type: `User`
          public struct Author: MySchema.SelectionSet {
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
        }
      }
    }
  }
}
