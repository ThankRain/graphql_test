// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class SendEmailCodeMutation: GraphQLMutation {
  public static let operationName: String = "SendEmailCode"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation SendEmailCode($input: SendEmailCodeInput!) {
        sendEmailCode(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.SendEmailCodeInput

  public init(input: MySchema.SendEmailCodeInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("sendEmailCode", SendEmailCode.self, arguments: ["input": .variable("input")]),
    ] }

    /// 发送邮箱验证码
    public var sendEmailCode: SendEmailCode { __data["sendEmailCode"] }

    /// SendEmailCode
    ///
    /// Parent Type: `SendCodePayload`
    public struct SendEmailCode: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.SendCodePayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
