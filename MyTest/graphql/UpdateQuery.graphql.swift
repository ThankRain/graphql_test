// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class UpdateQuery: GraphQLQuery {
  public static let operationName: String = "update"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query update {
        mobileAppInfo {
          __typename
          version
          version_code
          update_log
          url
        }
      }
      """
    ))

  public init() {}

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Query }
    public static var __selections: [Selection] { [
      .field("mobileAppInfo", MobileAppInfo.self),
    ] }

    /// 获取安卓app信息 默认或指定版本不存在时查询最新版本
    public var mobileAppInfo: MobileAppInfo { __data["mobileAppInfo"] }

    /// MobileAppInfo
    ///
    /// Parent Type: `MobileAppInfo`
    public struct MobileAppInfo: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.MobileAppInfo }
      public static var __selections: [Selection] { [
        .field("version", String.self),
        .field("version_code", Int.self),
        .field("update_log", String.self),
        .field("url", String.self),
      ] }

      public var version: String { __data["version"] }
      public var version_code: Int { __data["version_code"] }
      public var update_log: String { __data["update_log"] }
      public var url: String { __data["url"] }
    }
  }
}
