// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class CheckPhoneMutation: GraphQLMutation {
  public static let operationName: String = "CheckPhone"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation CheckPhone($input: CheckPhoneInput!) {
        checkPhone(input: $input) {
          __typename
          occupied
        }
      }
      """
    ))

  public var input: MySchema.CheckPhoneInput

  public init(input: MySchema.CheckPhoneInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("checkPhone", CheckPhone.self, arguments: ["input": .variable("input")]),
    ] }

    /// 检查手机号是否被占用
    public var checkPhone: CheckPhone { __data["checkPhone"] }

    /// CheckPhone
    ///
    /// Parent Type: `CheckPhonePayload`
    public struct CheckPhone: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.CheckPhonePayload }
      public static var __selections: [Selection] { [
        .field("occupied", Bool.self),
      ] }

      public var occupied: Bool { __data["occupied"] }
    }
  }
}
