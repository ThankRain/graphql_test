// @generated
// This file was automatically generated and should not be edited.

import Apollo

public struct AddMobileAppInfoInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    dex: String,
    sign: String,
    update_log: String,
    url: String,
    version: String,
    version_code: Int
  ) {
    __data = InputDict([
      "dex": dex,
      "sign": sign,
      "update_log": update_log,
      "url": url,
      "version": version,
      "version_code": version_code
    ])
  }

  public var dex: String {
    get { __data["dex"] }
    set { __data["dex"] = newValue }
  }

  public var sign: String {
    get { __data["sign"] }
    set { __data["sign"] = newValue }
  }

  public var update_log: String {
    get { __data["update_log"] }
    set { __data["update_log"] = newValue }
  }

  public var url: String {
    get { __data["url"] }
    set { __data["url"] = newValue }
  }

  public var version: String {
    get { __data["version"] }
    set { __data["version"] = newValue }
  }

  public var version_code: Int {
    get { __data["version_code"] }
    set { __data["version_code"] = newValue }
  }
}
