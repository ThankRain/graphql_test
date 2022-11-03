// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class FavoritePostMutation: GraphQLMutation {
  public static let operationName: String = "FavoritePost"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation FavoritePost($input: FavoritePostInput!) {
        favoritePost(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.FavoritePostInput

  public init(input: MySchema.FavoritePostInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("favoritePost", FavoritePost.self, arguments: ["input": .variable("input")]),
    ] }

    ///  收藏
    public var favoritePost: FavoritePost { __data["favoritePost"] }

    /// FavoritePost
    ///
    /// Parent Type: `FavoritePostPayload`
    public struct FavoritePost: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.FavoritePostPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
