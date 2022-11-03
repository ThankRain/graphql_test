// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class FollowUserMutation: GraphQLMutation {
  public static let operationName: String = "FollowUser"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation FollowUser($input: FollowUserInput!) {
        followUser(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.FollowUserInput

  public init(input: MySchema.FollowUserInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("followUser", FollowUser?.self, arguments: ["input": .variable("input")]),
    ] }

    ///  关注/取关用户
    public var followUser: FollowUser? { __data["followUser"] }

    /// FollowUser
    ///
    /// Parent Type: `FollowUserPayload`
    public struct FollowUser: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.FollowUserPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
