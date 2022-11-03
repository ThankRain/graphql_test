// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class ChangePasswordMutation: GraphQLMutation {
  public static let operationName: String = "ChangePassword"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation ChangePassword($input: ChangePasswordInput!) {
        changePassword(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.ChangePasswordInput

  public init(input: MySchema.ChangePasswordInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("changePassword", ChangePassword.self, arguments: ["input": .variable("input")]),
    ] }

    /// 修改密码
    public var changePassword: ChangePassword { __data["changePassword"] }

    /// ChangePassword
    ///
    /// Parent Type: `ChangePasswordPayload`
    public struct ChangePassword: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.ChangePasswordPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
