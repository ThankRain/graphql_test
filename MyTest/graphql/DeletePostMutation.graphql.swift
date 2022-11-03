// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class DeletePostMutation: GraphQLMutation {
  public static let operationName: String = "DeletePost"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation DeletePost($input: DeletePostInput!) {
        deletePost(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.DeletePostInput

  public init(input: MySchema.DeletePostInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("deletePost", DeletePost.self, arguments: ["input": .variable("input")]),
    ] }

    ///  删除帖子
    public var deletePost: DeletePost { __data["deletePost"] }

    /// DeletePost
    ///
    /// Parent Type: `DeletePostPayload`
    public struct DeletePost: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.DeletePostPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
