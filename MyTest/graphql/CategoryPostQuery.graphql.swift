// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class CategoryPostQuery: GraphQLQuery {
  public static let operationName: String = "CategoryPost"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query CategoryPost($id: ID!, $time: DateTime!, $limit: Int!) {
        category(id: $id) {
          __typename
          posts(time: $time, limit: $limit) {
            __typename
            post: nodes {
              __typename
              id
              author {
                __typename
                id
                username
                avatar
              }
              time
              reply_time
              title
              digest
              content
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
      .field("category", Category.self, arguments: ["id": .variable("id")]),
    ] }

    /// 按ID查询帖子分类信息
    public var category: Category { __data["category"] }

    /// Category
    ///
    /// Parent Type: `Category`
    public struct Category: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.Category }
      public static var __selections: [Selection] { [
        .field("posts", Posts.self, arguments: [
          "time": .variable("time"),
          "limit": .variable("limit")
        ]),
      ] }

      /// 分类的帖子
      public var posts: Posts { __data["posts"] }

      /// Category.Posts
      ///
      /// Parent Type: `PostConnection`
      public struct Posts: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.PostConnection }
        public static var __selections: [Selection] { [
          .field("nodes", alias: "post", [Post].self),
        ] }

        public var post: [Post] { __data["post"] }

        /// Category.Posts.Post
        ///
        /// Parent Type: `Post`
        public struct Post: MySchema.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.Post }
          public static var __selections: [Selection] { [
            .field("id", MySchema.ID.self),
            .field("author", Author.self),
            .field("time", MySchema.DateTime.self),
            .field("reply_time", MySchema.DateTime.self),
            .field("title", String.self),
            .field("digest", String.self),
            .field("content", String.self),
            .field("like_count", Int.self),
            .field("reply_count", Int.self),
            .field("liked", Bool.self),
            .field("favorite", Bool.self),
          ] }

          /// 帖子ID
          public var id: MySchema.ID { __data["id"] }
          /// 作者
          public var author: Author { __data["author"] }
          /// 发帖时间
          public var time: MySchema.DateTime { __data["time"] }
          /// 最后回复时间
          public var reply_time: MySchema.DateTime { __data["reply_time"] }
          /// 标题
          public var title: String { __data["title"] }
          /// 摘要
          public var digest: String { __data["digest"] }
          /// 正文
          public var content: String { __data["content"] }
          /// 点赞数
          public var like_count: Int { __data["like_count"] }
          /// 回复数(含一级和二级回复)
          public var reply_count: Int { __data["reply_count"] }
          /// 是否已赞 未登录返回false
          public var liked: Bool { __data["liked"] }
          /// 是否已收藏 未登录返回false
          public var favorite: Bool { __data["favorite"] }

          /// Category.Posts.Post.Author
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
