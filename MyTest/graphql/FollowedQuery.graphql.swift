// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class FollowedQuery: GraphQLQuery {
  public static let operationName: String = "Followed"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query Followed($id: ID!, $skip: Int!, $limit: Int!) {
        user(id: $id) {
          __typename
          followed_users(skip: $skip, limit: $limit) {
            __typename
            id
            avatar
            username
            user_count {
              __typename
              following_count
              followed_count
            }
          }
        }
      }
      """
    ))

  public var id: MySchema.ID
  public var skip: Int
  public var limit: Int

  public init(
    id: MySchema.ID,
    skip: Int,
    limit: Int
  ) {
    self.id = id
    self.skip = skip
    self.limit = limit
  }

  public var __variables: Variables? { [
    "id": id,
    "skip": skip,
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
        .field("followed_users", [Followed_user].self, arguments: [
          "skip": .variable("skip"),
          "limit": .variable("limit")
        ]),
      ] }

      /// 关注他的用户
      public var followed_users: [Followed_user] { __data["followed_users"] }

      /// User.Followed_user
      ///
      /// Parent Type: `User`
      public struct Followed_user: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.User }
        public static var __selections: [Selection] { [
          .field("id", MySchema.ID.self),
          .field("avatar", String.self),
          .field("username", String.self),
          .field("user_count", User_count.self),
        ] }

        /// 用户ID
        public var id: MySchema.ID { __data["id"] }
        /// 头像URL
        public var avatar: String { __data["avatar"] }
        /// 用户名
        public var username: String { __data["username"] }
        /// 用户数据
        public var user_count: User_count { __data["user_count"] }

        /// User.Followed_user.User_count
        ///
        /// Parent Type: `UserCount`
        public struct User_count: MySchema.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { MySchema.Objects.UserCount }
          public static var __selections: [Selection] { [
            .field("following_count", Int.self),
            .field("followed_count", Int.self),
          ] }

          /// 关注数
          public var following_count: Int { __data["following_count"] }
          /// 粉丝数
          public var followed_count: Int { __data["followed_count"] }
        }
      }
    }
  }
}
