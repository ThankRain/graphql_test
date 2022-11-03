// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class AddPostMutation: GraphQLMutation {
  public static let operationName: String = "AddPost"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation AddPost($input: AddPostInput!) {
        addPost(input: $input) {
          __typename
          id
        }
      }
      """
    ))

  public var input: MySchema.AddPostInput

  public init(input: MySchema.AddPostInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("addPost", AddPost.self, arguments: ["input": .variable("input")]),
    ] }

    ///  新建帖子
    public var addPost: AddPost { __data["addPost"] }

    /// AddPost
    ///
    /// Parent Type: `AddPostPayload`
    public struct AddPost: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.AddPostPayload }
      public static var __selections: [Selection] { [
        .field("id", MySchema.ID.self),
      ] }

      public var id: MySchema.ID { __data["id"] }
    }
  }
}
