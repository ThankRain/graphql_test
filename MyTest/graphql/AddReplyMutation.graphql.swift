// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class AddReplyMutation: GraphQLMutation {
  public static let operationName: String = "AddReply"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation AddReply($input: AddReplyInput!) {
        addReply(input: $input) {
          __typename
          id
        }
      }
      """
    ))

  public var input: MySchema.AddReplyInput

  public init(input: MySchema.AddReplyInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("addReply", AddReply.self, arguments: ["input": .variable("input")]),
    ] }

    ///  新建回复
    public var addReply: AddReply { __data["addReply"] }

    /// AddReply
    ///
    /// Parent Type: `AddReplyPayload`
    public struct AddReply: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.AddReplyPayload }
      public static var __selections: [Selection] { [
        .field("id", MySchema.ID.self),
      ] }

      public var id: MySchema.ID { __data["id"] }
    }
  }
}
