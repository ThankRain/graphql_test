// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class ReadMessageMutation: GraphQLMutation {
  public static let operationName: String = "ReadMessage"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation ReadMessage($input: ReadMessageInput!) {
        readMessage(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.ReadMessageInput

  public init(input: MySchema.ReadMessageInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("readMessage", ReadMessage.self, arguments: ["input": .variable("input")]),
    ] }

    ///  修改消息为已读
    public var readMessage: ReadMessage { __data["readMessage"] }

    /// ReadMessage
    ///
    /// Parent Type: `ReadMessagePayload`
    public struct ReadMessage: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.ReadMessagePayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
