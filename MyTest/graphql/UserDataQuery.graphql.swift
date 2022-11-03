// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class UserDataQuery: GraphQLQuery {
  public static let operationName: String = "UserData"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query UserData($id: ID!) {
        user(id: $id) {
          __typename
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

      /// User.User_count
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
