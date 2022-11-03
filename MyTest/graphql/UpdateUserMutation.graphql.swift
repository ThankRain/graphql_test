// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class UpdateUserMutation: GraphQLMutation {
  public static let operationName: String = "UpdateUser"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation UpdateUser($input: UpdateUserInput!) {
        updateUser(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.UpdateUserInput

  public init(input: MySchema.UpdateUserInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("updateUser", UpdateUser?.self, arguments: ["input": .variable("input")]),
    ] }

    ///  更新用户信息
    public var updateUser: UpdateUser? { __data["updateUser"] }

    /// UpdateUser
    ///
    /// Parent Type: `UpdateUserPayload`
    public struct UpdateUser: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.UpdateUserPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
