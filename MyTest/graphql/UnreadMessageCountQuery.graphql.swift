// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo
import MySchema

public class UnreadMessageCountQuery: GraphQLQuery {
  public static let operationName: String = "UnreadMessageCount"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query UnreadMessageCount($type: MessageType) {
        unreadMessageCount(type: $type) {
          __typename
          count
        }
      }
      """
    ))

  public var type: GraphQLNullable<GraphQLEnum<MySchema.MessageType>>

  public init(type: GraphQLNullable<GraphQLEnum<MySchema.MessageType>>) {
    self.type = type
  }

  public var __variables: Variables? { ["type": type] }

  public struct Data: MySchema.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MySchema.Objects.Query }
    public static var __selections: [Selection] { [
      .field("unreadMessageCount", UnreadMessageCount.self, arguments: ["type": .variable("type")]),
    ] }

    ///  未读消息数
    public var unreadMessageCount: UnreadMessageCount { __data["unreadMessageCount"] }

    /// UnreadMessageCount
    ///
    /// Parent Type: `MessageCount`
    public struct UnreadMessageCount: MySchema.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { MySchema.Objects.MessageCount }
      public static var __selections: [Selection] { [
        .field("count", Int.self),
      ] }

      public var count: Int { __data["count"] }
    }
  }
}
