// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class AppQuery: GraphQLQuery {
  public static let operationName: String = "app"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query app($code: Int) {
        mobileAppInfo(version_code: $code) {
          __typename
          version_code
          dex
          sign
        }
      }
      """
    ))

  public var code: GraphQLNullable<Int>

  public init(code: GraphQLNullable<Int>) {
    self.code = code
  }

  public var __variables: Variables? { ["code": code] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Query }
    public static var __selections: [Selection] { [
      .field("mobileAppInfo", MobileAppInfo.self, arguments: ["version_code": .variable("code")]),
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
        .field("version_code", Int.self),
        .field("dex", String.self),
        .field("sign", String.self),
      ] }

      public var version_code: Int { __data["version_code"] }
      public var dex: String { __data["dex"] }
      public var sign: String { __data["sign"] }
    }
  }
}
