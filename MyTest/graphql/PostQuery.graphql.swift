// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class PostQuery: GraphQLQuery {
  public static let operationName: String = "Post"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query Post($id: ID!) {
        post(id: $id) {
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
          category {
            __typename
            id
            name
          }
          like_count
          reply_count
          liked
          favorite
          reply {
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
              }
              time
              content
            }
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
      .field("post", Post.self, arguments: ["id": .variable("id")]),
    ] }

    /// 按ID查询帖子信息
    public var post: Post { __data["post"] }

    /// Post
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
        .field("category", [Category].self),
        .field("like_count", Int.self),
        .field("reply_count", Int.self),
        .field("liked", Bool.self),
        .field("favorite", Bool.self),
        .field("reply", [Reply].self),
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
      /// 分类
      public var category: [Category] { __data["category"] }
      /// 点赞数
      public var like_count: Int { __data["like_count"] }
      /// 回复数(含一级和二级回复)
      public var reply_count: Int { __data["reply_count"] }
      /// 是否已赞 未登录返回false
      public var liked: Bool { __data["liked"] }
      /// 是否已收藏 未登录返回false
      public var favorite: Bool { __data["favorite"] }
      /// 回复
      public var reply: [Reply] { __data["reply"] }

      /// Post.Author
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

      /// Post.Category
      ///
      /// Parent Type: `Category`
      public struct Category: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.Category }
        public static var __selections: [Selection] { [
          .field("id", String.self),
          .field("name", String.self),
        ] }

        /// 分类ID
        public var id: String { __data["id"] }
        /// 分类名称
        public var name: String { __data["name"] }
      }

      /// Post.Reply
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

        /// Post.Reply.Author
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

        /// Post.Reply.Sub_reply
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

          /// Post.Reply.Sub_reply.Author
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

          /// Post.Reply.Sub_reply.Reply_at
          ///
          /// Parent Type: `Reply`
          public struct Reply_at: MySchema.SelectionSet {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public static var __parentType: ParentType { MySchema.Objects.Reply }
            public static var __selections: [Selection] { [
              .field("id", MySchema.ID.self),
              .field("author", Author.self),
            ] }

            /// 回复ID
            public var id: MySchema.ID { __data["id"] }
            /// 作者
            public var author: Author { __data["author"] }

            /// Post.Reply.Sub_reply.Reply_at.Author
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
}
