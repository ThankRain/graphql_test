// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class LikePostMutation: GraphQLMutation {
  public static let operationName: String = "LikePost"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation LikePost($input: LikePostInput!) {
        likePost(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.LikePostInput

  public init(input: MySchema.LikePostInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("likePost", LikePost.self, arguments: ["input": .variable("input")]),
    ] }

    ///  点赞
    public var likePost: LikePost { __data["likePost"] }

    /// LikePost
    ///
    /// Parent Type: `LikePostPayload`
    public struct LikePost: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.LikePostPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
