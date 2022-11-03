// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class GetAppUploadTokenMutation: GraphQLMutation {
  public static let operationName: String = "GetAppUploadToken"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation GetAppUploadToken($input: GetMobileAppUploadTokenInput!) {
        getMobileAppUploadToken(input: $input) {
          __typename
          token
          url
          resource_key
        }
      }
      """
    ))

  public var input: MySchema.GetMobileAppUploadTokenInput

  public init(input: MySchema.GetMobileAppUploadTokenInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("getMobileAppUploadToken", GetMobileAppUploadToken.self, arguments: ["input": .variable("input")]),
    ] }

    ///  获取app上传凭证
    public var getMobileAppUploadToken: GetMobileAppUploadToken { __data["getMobileAppUploadToken"] }

    /// GetMobileAppUploadToken
    ///
    /// Parent Type: `GetMobileAppUploadTokenPayload`
    public struct GetMobileAppUploadToken: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.GetMobileAppUploadTokenPayload }
      public static var __selections: [Selection] { [
        .field("token", String.self),
        .field("url", String.self),
        .field("resource_key", String.self),
      ] }

      /// 上传凭证
      public var token: String { __data["token"] }
      /// URL
      public var url: String { __data["url"] }
      /// 相对路径
      public var resource_key: String { __data["resource_key"] }
    }
  }
}
