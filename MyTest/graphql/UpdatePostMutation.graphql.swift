// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class UpdatePostMutation: GraphQLMutation {
  public static let operationName: String = "UpdatePost"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation UpdatePost($input: UpdatePostInput!) {
        updatePost(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.UpdatePostInput

  public init(input: MySchema.UpdatePostInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("updatePost", UpdatePost.self, arguments: ["input": .variable("input")]),
    ] }

    ///  更新帖子
    public var updatePost: UpdatePost { __data["updatePost"] }

    /// UpdatePost
    ///
    /// Parent Type: `UpdatePostPayload`
    public struct UpdatePost: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.UpdatePostPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
