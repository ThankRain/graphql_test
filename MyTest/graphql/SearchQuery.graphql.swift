// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class SearchQuery: GraphQLQuery {
  public static let operationName: String = "Search"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query Search($type: SearchType!, $key: String!, $skip: Int!, $limit: Int!) {
        search(type: $type, key: $key, skip: $skip, limit: $limit) {
          __typename
          ... on Post {
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
          ... on User {
            id
            create_time
            username
            avatar
            is_following
            user_count {
              __typename
              post_count
              following_count
              followed_count
              liked_count
            }
          }
        }
      }
      """
    ))

  public var type: GraphQLEnum<MySchema.SearchType>
  public var key: String
  public var skip: Int
  public var limit: Int

  public init(
    type: GraphQLEnum<MySchema.SearchType>,
    key: String,
    skip: Int,
    limit: Int
  ) {
    self.type = type
    self.key = key
    self.skip = skip
    self.limit = limit
  }

  public var __variables: Variables? { [
    "type": type,
    "key": key,
    "skip": skip,
    "limit": limit
  ] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Query }
    public static var __selections: [Selection] { [
      .field("search", [Search].self, arguments: [
        "type": .variable("type"),
        "key": .variable("key"),
        "skip": .variable("skip"),
        "limit": .variable("limit")
      ]),
    ] }

    /// 搜索用户/帖子
    public var search: [Search] { __data["search"] }

    /// Search
    ///
    /// Parent Type: `SearchResult`
    public struct Search: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Unions.SearchResult }
      public static var __selections: [Selection] { [
        .inlineFragment(AsPost.self),
        .inlineFragment(AsUser.self),
      ] }

      public var asPost: AsPost? { _asInlineFragment() }
      public var asUser: AsUser? { _asInlineFragment() }

      /// Search.AsPost
      ///
      /// Parent Type: `Post`
      public struct AsPost: MySchema.InlineFragment {
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

        /// Search.AsPost.Author
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

      /// Search.AsUser
      ///
      /// Parent Type: `User`
      public struct AsUser: MySchema.InlineFragment {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.User }
        public static var __selections: [Selection] { [
          .field("id", MySchema.ID.self),
          .field("create_time", MySchema.DateTime.self),
          .field("username", String.self),
          .field("avatar", String.self),
          .field("is_following", Bool.self),
          .field("user_count", User_count.self),
        ] }

        /// 用户ID
        public var id: MySchema.ID { __data["id"] }
        /// 注册时间
        public var create_time: MySchema.DateTime { __data["create_time"] }
        /// 用户名
        public var username: String { __data["username"] }
        /// 头像URL
        public var avatar: String { __data["avatar"] }
        /// 是否已关注 未登录/自己返回false
        public var is_following: Bool { __data["is_following"] }
        /// 用户数据
        public var user_count: User_count { __data["user_count"] }

        /// Search.AsUser.User_count
        ///
        /// Parent Type: `UserCount`
        public struct User_count: MySchema.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.UserCount }
          public static var __selections: [Selection] { [
            .field("post_count", Int.self),
            .field("following_count", Int.self),
            .field("followed_count", Int.self),
            .field("liked_count", Int.self),
          ] }

          /// 帖子数
          public var post_count: Int { __data["post_count"] }
          /// 关注数
          public var following_count: Int { __data["following_count"] }
          /// 粉丝数
          public var followed_count: Int { __data["followed_count"] }
          /// 被点赞
          public var liked_count: Int { __data["liked_count"] }
        }
      }
    }
  }
}
