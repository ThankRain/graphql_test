// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class UpdateMobileAppMutation: GraphQLMutation {
  public static let operationName: String = "UpdateMobileApp"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation UpdateMobileApp($input: UpdateMobileAppInfoInput!) {
        updateMobileAppInfo(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.UpdateMobileAppInfoInput

  public init(input: MySchema.UpdateMobileAppInfoInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("updateMobileAppInfo", UpdateMobileAppInfo.self, arguments: ["input": .variable("input")]),
    ] }

    ///  根据version_code更新安卓app信息
    public var updateMobileAppInfo: UpdateMobileAppInfo { __data["updateMobileAppInfo"] }

    /// UpdateMobileAppInfo
    ///
    /// Parent Type: `UpdateMobileAppInfoPayload`
    public struct UpdateMobileAppInfo: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.UpdateMobileAppInfoPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
