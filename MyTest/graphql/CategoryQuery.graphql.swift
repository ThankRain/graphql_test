// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class CategoryQuery: GraphQLQuery {
  public static let operationName: String = "Category"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query Category {
        categories {
          __typename
          id
          name
          argue_count
          read_count
          desc
          hot_value
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
      .field("categories", [Category].self),
    ] }

    /// 查询所有帖子分类
    public var categories: [Category] { __data["categories"] }

    /// Category
    ///
    /// Parent Type: `Category`
    public struct Category: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.Category }
      public static var __selections: [Selection] { [
        .field("id", String.self),
        .field("name", String.self),
        .field("argue_count", Int.self),
        .field("read_count", Int.self),
        .field("desc", String.self),
        .field("hot_value", Int.self),
      ] }

      /// 分类ID
      public var id: String { __data["id"] }
      /// 分类名称
      public var name: String { __data["name"] }
      /// 分类讨论数量 (帖子+回复)
      public var argue_count: Int { __data["argue_count"] }
      /// 分类阅读数量
      public var read_count: Int { __data["read_count"] }
      /// 描述
      public var desc: String { __data["desc"] }
      /// 热度
      public var hot_value: Int { __data["hot_value"] }
    }
  }
}
