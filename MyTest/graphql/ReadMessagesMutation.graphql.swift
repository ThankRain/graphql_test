// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class ReadMessagesMutation: GraphQLMutation {
  public static let operationName: String = "ReadMessages"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation ReadMessages($input: ReadMessagesInput!) {
        readMessages(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.ReadMessagesInput

  public init(input: MySchema.ReadMessagesInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("readMessages", ReadMessages.self, arguments: ["input": .variable("input")]),
    ] }

    ///  修改某类型所有消息为已读
    public var readMessages: ReadMessages { __data["readMessages"] }

    /// ReadMessages
    ///
    /// Parent Type: `ReadMessagesPayload`
    public struct ReadMessages: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.ReadMessagesPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
