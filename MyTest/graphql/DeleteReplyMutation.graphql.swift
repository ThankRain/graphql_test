// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class DeleteReplyMutation: GraphQLMutation {
  public static let operationName: String = "DeleteReply"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation DeleteReply($input: DeleteReplyInput!) {
        deleteReply(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.DeleteReplyInput

  public init(input: MySchema.DeleteReplyInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("deleteReply", DeleteReply.self, arguments: ["input": .variable("input")]),
    ] }

    ///  删除回复
    public var deleteReply: DeleteReply { __data["deleteReply"] }

    /// DeleteReply
    ///
    /// Parent Type: `DeleteReplyPayload`
    public struct DeleteReply: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.DeleteReplyPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
