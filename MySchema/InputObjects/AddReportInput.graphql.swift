// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct AddReportInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    desc: String,
    reason: MySchema.ID,
    target: MySchema.ID,
    type: GraphQLEnum<MySchema.ReportType>
  ) {
    __data = InputDict([
      "desc": desc,
      "reason": reason,
      "target": target,
      "type": type
    ])
  }

  public var desc: String {
    get { __data["desc"] }
    set { __data["desc"] = newValue }
  }

  public var reason: MySchema.ID {
    get { __data["reason"] }
    set { __data["reason"] = newValue }
  }

  public var target: MySchema.ID {
    get { __data["target"] }
    set { __data["target"] = newValue }
  }

  public var type: GraphQLEnum<MySchema.ReportType> {
    get { __data["type"] }
    set { __data["type"] = newValue }
  }
}
