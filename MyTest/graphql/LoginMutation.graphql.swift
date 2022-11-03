// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class LoginMutation: GraphQLMutation {
  public static let operationName: String = "Login"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation Login($input: LoginInput!) {
        login(input: $input) {
          __typename
          id
          token
          expire
          permission
        }
      }
      """
    ))

  public var input: MySchema.LoginInput

  public init(input: MySchema.LoginInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("login", Login.self, arguments: ["input": .variable("input")]),
    ] }

    /// 登录
    public var login: Login { __data["login"] }

    /// Login
    ///
    /// Parent Type: `LoginPayload`
    public struct Login: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.LoginPayload }
      public static var __selections: [Selection] { [
        .field("id", MySchema.ID.self),
        .field("token", String.self),
        .field("expire", MySchema.DateTime.self),
        .field("permission", Int.self),
      ] }

      public var id: MySchema.ID { __data["id"] }
      public var token: String { __data["token"] }
      public var expire: MySchema.DateTime { __data["expire"] }
      public var permission: Int { __data["permission"] }
    }
  }
}
