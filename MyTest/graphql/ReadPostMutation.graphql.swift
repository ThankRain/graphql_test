// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class ReadPostMutation: GraphQLMutation {
  public static let operationName: String = "ReadPost"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation ReadPost($input: ReadPostInput!) {
        readPost(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.ReadPostInput

  public init(input: MySchema.ReadPostInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("readPost", ReadPost.self, arguments: ["input": .variable("input")]),
    ] }

    /// 记录帖子已读
    public var readPost: ReadPost { __data["readPost"] }

    /// ReadPost
    ///
    /// Parent Type: `ReadPostPayload`
    public struct ReadPost: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.ReadPostPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
