// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class CheckUsernameMutation: GraphQLMutation {
  public static let operationName: String = "CheckUsername"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation CheckUsername($input: CheckUsernameInput!) {
        checkUsername(input: $input) {
          __typename
          occupied
        }
      }
      """
    ))

  public var input: MySchema.CheckUsernameInput

  public init(input: MySchema.CheckUsernameInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("checkUsername", CheckUsername.self, arguments: ["input": .variable("input")]),
    ] }

    /// 检查用户名是否被占用
    public var checkUsername: CheckUsername { __data["checkUsername"] }

    /// CheckUsername
    ///
    /// Parent Type: `CheckUsernamePayload`
    public struct CheckUsername: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.CheckUsernamePayload }
      public static var __selections: [Selection] { [
        .field("occupied", Bool.self),
      ] }

      public var occupied: Bool { __data["occupied"] }
    }
  }
}
