// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class RegisterMutation: GraphQLMutation {
  public static let operationName: String = "Register"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation Register($input: RegisterInput!) {
        register(input: $input) {
          __typename
          id
        }
      }
      """
    ))

  public var input: MySchema.RegisterInput

  public init(input: MySchema.RegisterInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("register", Register.self, arguments: ["input": .variable("input")]),
    ] }

    /// 注册
    public var register: Register { __data["register"] }

    /// Register
    ///
    /// Parent Type: `RegisterPayload`
    public struct Register: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.RegisterPayload }
      public static var __selections: [Selection] { [
        .field("id", MySchema.ID.self),
      ] }

      public var id: MySchema.ID { __data["id"] }
    }
  }
}
