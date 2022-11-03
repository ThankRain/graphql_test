// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class CurrentUserQuery: GraphQLQuery {
  public static let operationName: String = "CurrentUser"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query CurrentUser {
        currentUser {
          __typename
          id
          username
          avatar
          user_count {
            __typename
            post_count
            following_count
            followed_count
            replied_count
            liked_count
          }
          create_time
          account_info {
            __typename
            person_id
            is_alumni
            phone
          }
        }
      }
      """
    ))

  public init() {}

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Query }
    public static var __selections: [Selection] { [
      .field("currentUser", CurrentUser.self),
    ] }

    ///  当前登录用户信息
    public var currentUser: CurrentUser { __data["currentUser"] }

    /// CurrentUser
    ///
    /// Parent Type: `User`
    public struct CurrentUser: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.User }
      public static var __selections: [Selection] { [
        .field("id", MySchema.ID.self),
        .field("username", String.self),
        .field("avatar", String.self),
        .field("user_count", User_count.self),
        .field("create_time", MySchema.DateTime.self),
        .field("account_info", Account_info.self),
      ] }

      /// 用户ID
      public var id: MySchema.ID { __data["id"] }
      /// 用户名
      public var username: String { __data["username"] }
      /// 头像URL
      public var avatar: String { __data["avatar"] }
      /// 用户数据
      public var user_count: User_count { __data["user_count"] }
      /// 注册时间
      public var create_time: MySchema.DateTime { __data["create_time"] }
      ///  账号信息
      public var account_info: Account_info { __data["account_info"] }

      /// CurrentUser.User_count
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
          .field("replied_count", Int.self),
          .field("liked_count", Int.self),
        ] }

        /// 帖子数
        public var post_count: Int { __data["post_count"] }
        /// 关注数
        public var following_count: Int { __data["following_count"] }
        /// 粉丝数
        public var followed_count: Int { __data["followed_count"] }
        /// 被评论
        public var replied_count: Int { __data["replied_count"] }
        /// 被点赞
        public var liked_count: Int { __data["liked_count"] }
      }

      /// CurrentUser.Account_info
      ///
      /// Parent Type: `Account`
      public struct Account_info: MySchema.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { MySchema.Objects.Account }
        public static var __selections: [Selection] { [
          .field("person_id", String.self),
          .field("is_alumni", Bool.self),
          .field("phone", String.self),
        ] }

        /// 学号/人事编号
        public var person_id: String { __data["person_id"] }
        /// 是否为校友/已毕业
        public var is_alumni: Bool { __data["is_alumni"] }
        /// 电话
        public var phone: String { __data["phone"] }
      }
    }
  }
}
