// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class GetUploadTokenMutation: GraphQLMutation {
  public static let operationName: String = "GetUploadToken"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation GetUploadToken($input: GetUploadTokenInput!) {
        getUploadToken(input: $input) {
          __typename
          token
          url
          resource_key
        }
      }
      """
    ))

  public var input: MySchema.GetUploadTokenInput

  public init(input: MySchema.GetUploadTokenInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("getUploadToken", GetUploadToken.self, arguments: ["input": .variable("input")]),
    ] }

    ///  获取图片上传凭证
    public var getUploadToken: GetUploadToken { __data["getUploadToken"] }

    /// GetUploadToken
    ///
    /// Parent Type: `GetUploadTokenPayload`
    public struct GetUploadToken: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.GetUploadTokenPayload }
      public static var __selections: [Selection] { [
        .field("token", String.self),
        .field("url", String.self),
        .field("resource_key", String.self),
      ] }

      /// 上传凭证
      public var token: String { __data["token"] }
      /// 图片URL
      public var url: String { __data["url"] }
      /// 图片相对路径
      public var resource_key: String { __data["resource_key"] }
    }
  }
}
