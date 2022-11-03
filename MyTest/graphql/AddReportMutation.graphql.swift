// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class AddReportMutation: GraphQLMutation {
  public static let operationName: String = "AddReport"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation AddReport($input: AddReportInput!) {
        addReport(input: $input) {
          __typename
          id
        }
      }
      """
    ))

  public var input: MySchema.AddReportInput

  public init(input: MySchema.AddReportInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Mutation }
    public static var __selections: [Selection] { [
      .field("addReport", AddReport?.self, arguments: ["input": .variable("input")]),
    ] }

    ///  新建举报
    public var addReport: AddReport? { __data["addReport"] }

    /// AddReport
    ///
    /// Parent Type: `AddReportPayload`
    public struct AddReport: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.AddReportPayload }
      public static var __selections: [Selection] { [
        .field("id", MySchema.ID.self),
      ] }

      public var id: MySchema.ID { __data["id"] }
    }
  }
}
