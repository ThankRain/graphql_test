// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class SetPhoneMutation: GraphQLMutation {
  public static let operationName: String = "SetPhone"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation SetPhone($input: SetPhoneInput!) {
        setPhone(input: $input) {
          __typename
          success
        }
      }
      """
    ))

  public var input: MySchema.SetPhoneInput

  public init(input: MySchema.SetPhoneInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("setPhone", SetPhone.self, arguments: ["input": .variable("input")]),
    ] }

    ///  绑定手机号
    public var setPhone: SetPhone { __data["setPhone"] }

    /// SetPhone
    ///
    /// Parent Type: `SetPhonePayload`
    public struct SetPhone: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.SetPhonePayload }
      public static var __selections: [Selection] { [
        .field("success", Bool.self),
      ] }

      public var success: Bool { __data["success"] }
    }
  }
}
