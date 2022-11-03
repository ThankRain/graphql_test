// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class AddMobileAppMutation: GraphQLMutation {
  public static let operationName: String = "AddMobileApp"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation AddMobileApp($input: AddMobileAppInfoInput!) {
        addMobileAppInfo(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.AddMobileAppInfoInput

  public init(input: MySchema.AddMobileAppInfoInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("addMobileAppInfo", AddMobileAppInfo.self, arguments: ["input": .variable("input")]),
    ] }

    ///  添加安卓app信息
    public var addMobileAppInfo: AddMobileAppInfo { __data["addMobileAppInfo"] }

    /// AddMobileAppInfo
    ///
    /// Parent Type: `AddMobileAppInfoPayload`
    public struct AddMobileAppInfo: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.AddMobileAppInfoPayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
