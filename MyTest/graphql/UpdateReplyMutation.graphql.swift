// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class UpdateReplyMutation: GraphQLMutation {
  public static let operationName: String = "UpdateReply"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation UpdateReply($input: UpdateReplyInput!) {
        updateReply(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.UpdateReplyInput

  public init(input: MySchema.UpdateReplyInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("updateReply", UpdateReply.self, arguments: ["input": .variable("input")]),
    ] }

    ///  更新回复
    public var updateReply: UpdateReply { __data["updateReply"] }

    /// UpdateReply
    ///
    /// Parent Type: `UpdateReplyPayload`
    public struct UpdateReply: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.UpdateReplyPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
