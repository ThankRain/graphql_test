// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class SendPhoneCodeMutation: GraphQLMutation {
  public static let operationName: String = "SendPhoneCode"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation SendPhoneCode($input: SendPhoneCodeInput!) {
        sendPhoneCode(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.SendPhoneCodeInput

  public init(input: MySchema.SendPhoneCodeInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("sendPhoneCode", SendPhoneCode.self, arguments: ["input": .variable("input")]),
    ] }

    /// 发送手机验证码
    public var sendPhoneCode: SendPhoneCode { __data["sendPhoneCode"] }

    /// SendPhoneCode
    ///
    /// Parent Type: `SendCodePayload`
    public struct SendPhoneCode: MySchema.SelectionSet {
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
