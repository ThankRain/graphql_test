// @generated
// This file was automatically generated and should not be edited.

import Apollo

public typealias ID = String

public protocol SelectionSet: Apollo.SelectionSet & Apollo.RootSelectionSet
where Schema == MySchema.SchemaMetadata {}

public protocol InlineFragment: Apollo.SelectionSet & Apollo.InlineFragment
where Schema == MySchema.SchemaMetadata {}

public protocol MutableSelectionSet: Apollo.MutableRootSelectionSet
where Schema == MySchema.SchemaMetadata {}

public protocol MutableInlineFragment: Apollo.MutableSelectionSet & Apollo.InlineFragment
where Schema == MySchema.SchemaMetadata {}

public enum SchemaMetadata: Apollo.SchemaMetadata {
  public static let configuration: Apollo.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> Object? {
    switch typename {
    case "Mutation": return MySchema.Objects.Mutation
    case "LoginPayload": return MySchema.Objects.LoginPayload
    case "RegisterPayload": return MySchema.Objects.RegisterPayload
    case "ChangePasswordPayload": return MySchema.Objects.ChangePasswordPayload
    case "SetPhonePayload": return MySchema.Objects.SetPhonePayload
    case "SendCodePayload": return MySchema.Objects.SendCodePayload
    case "CheckUsernamePayload": return MySchema.Objects.CheckUsernamePayload
    case "CheckPersonIDPayload": return MySchema.Objects.CheckPersonIDPayload
    case "CheckPhonePayload": return MySchema.Objects.CheckPhonePayload
    case "UpdateUserPayload": return MySchema.Objects.UpdateUserPayload
    case "FollowUserPayload": return MySchema.Objects.FollowUserPayload
    case "Query": return MySchema.Objects.Query
    case "User": return MySchema.Objects.User
    case "UserCount": return MySchema.Objects.UserCount
    case "Account": return MySchema.Objects.Account
    case "PostConnection": return MySchema.Objects.PostConnection
    case "Post": return MySchema.Objects.Post
    case "Category": return MySchema.Objects.Category
    case "Reply": return MySchema.Objects.Reply
    case "Message": return MySchema.Objects.Message
    case "ReadMessagePayload": return MySchema.Objects.ReadMessagePayload
    case "ReadMessagesPayload": return MySchema.Objects.ReadMessagesPayload
    case "MessageCount": return MySchema.Objects.MessageCount
    case "GetUploadTokenPayload": return MySchema.Objects.GetUploadTokenPayload
    case "ReadPostPayload": return MySchema.Objects.ReadPostPayload
    case "UpdatePostPayload": return MySchema.Objects.UpdatePostPayload
    case "DeletePostPayload": return MySchema.Objects.DeletePostPayload
    case "LikePostPayload": return MySchema.Objects.LikePostPayload
    case "FavoritePostPayload": return MySchema.Objects.FavoritePostPayload
    case "AddReplyPayload": return MySchema.Objects.AddReplyPayload
    case "UpdateReplyPayload": return MySchema.Objects.UpdateReplyPayload
    case "DeleteReplyPayload": return MySchema.Objects.DeleteReplyPayload
    case "AddReportPayload": return MySchema.Objects.AddReportPayload
    case "MobileAppInfo": return MySchema.Objects.MobileAppInfo
    case "GetMobileAppUploadTokenPayload": return MySchema.Objects.GetMobileAppUploadTokenPayload
    case "AddMobileAppInfoPayload": return MySchema.Objects.AddMobileAppInfoPayload
    case "UpdateMobileAppInfoPayload": return MySchema.Objects.UpdateMobileAppInfoPayload
    case "AddPostPayload": return MySchema.Objects.AddPostPayload
    case "ReplyConnection": return MySchema.Objects.ReplyConnection
    case "PageInfo": return MySchema.Objects.PageInfo
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
