// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class CheckPersonIdMutation: GraphQLMutation {
  public static let operationName: String = "CheckPersonId"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation CheckPersonId($input: CheckPersonIDInput!) {
        checkPersonID(input: $input) {
          __typename
          occupied
        }
      }
      """
    ))

  public var input: MySchema.CheckPersonIDInput

  public init(input: MySchema.CheckPersonIDInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("checkPersonID", CheckPersonID.self, arguments: ["input": .variable("input")]),
    ] }

    /// 检查学号/人事编号是否被占用
    public var checkPersonID: CheckPersonID { __data["checkPersonID"] }

    /// CheckPersonID
    ///
    /// Parent Type: `CheckPersonIDPayload`
    public struct CheckPersonID: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.CheckPersonIDPayload }
      public static var __selections: [Selection] { [
        .field("occupied", Bool.self),
      ] }

      public var occupied: Bool { __data["occupied"] }
    }
  }
}
