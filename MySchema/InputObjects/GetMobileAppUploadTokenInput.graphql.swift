// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct GetMobileAppUploadTokenInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    filename: String
  ) {
    __data = InputDict([
      "filename": filename
    ])
  }

  /// 文件名
  public var filename: String {
    get { __data["filename"] }
    set { __data["filename"] = newValue }
  }
}
