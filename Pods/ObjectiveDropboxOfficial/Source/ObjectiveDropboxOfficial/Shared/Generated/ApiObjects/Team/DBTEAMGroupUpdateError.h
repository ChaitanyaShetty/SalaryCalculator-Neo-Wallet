///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMGroupUpdateError;

#pragma mark - API Object

///
/// The `GroupUpdateError` union.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMGroupUpdateError : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBTEAMGroupUpdateErrorTag` enum type represents the possible tag states
/// with which the `DBTEAMGroupUpdateError` union can exist.
typedef NS_ENUM(NSInteger, DBTEAMGroupUpdateErrorTag) {
  /// No matching group found. No groups match the specified group ID.
  DBTEAMGroupUpdateErrorGroupNotFound,

  /// (no description).
  DBTEAMGroupUpdateErrorOther,

  /// The requested group name is already being used by another group.
  DBTEAMGroupUpdateErrorGroupNameAlreadyUsed,

  /// Group name is empty or has invalid characters.
  DBTEAMGroupUpdateErrorGroupNameInvalid,

  /// The requested external ID is already being used by another group.
  DBTEAMGroupUpdateErrorExternalIdAlreadyInUse,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBTEAMGroupUpdateErrorTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "group_not_found".
///
/// Description of the "group_not_found" tag state: No matching group found. No
/// groups match the specified group ID.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithGroupNotFound;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

///
/// Initializes union class with tag state of "group_name_already_used".
///
/// Description of the "group_name_already_used" tag state: The requested group
/// name is already being used by another group.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithGroupNameAlreadyUsed;

///
/// Initializes union class with tag state of "group_name_invalid".
///
/// Description of the "group_name_invalid" tag state: Group name is empty or
/// has invalid characters.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithGroupNameInvalid;

///
/// Initializes union class with tag state of "external_id_already_in_use".
///
/// Description of the "external_id_already_in_use" tag state: The requested
/// external ID is already being used by another group.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithExternalIdAlreadyInUse;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "group_not_found".
///
/// @return Whether the union's current tag state has value "group_not_found".
///
- (BOOL)isGroupNotFound;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves whether the union's current tag state has value
/// "group_name_already_used".
///
/// @return Whether the union's current tag state has value
/// "group_name_already_used".
///
- (BOOL)isGroupNameAlreadyUsed;

///
/// Retrieves whether the union's current tag state has value
/// "group_name_invalid".
///
/// @return Whether the union's current tag state has value
/// "group_name_invalid".
///
- (BOOL)isGroupNameInvalid;

///
/// Retrieves whether the union's current tag state has value
/// "external_id_already_in_use".
///
/// @return Whether the union's current tag state has value
/// "external_id_already_in_use".
///
- (BOOL)isExternalIdAlreadyInUse;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBTEAMGroupUpdateError` union.
///
@interface DBTEAMGroupUpdateErrorSerializer : NSObject

///
/// Serializes `DBTEAMGroupUpdateError` instances.
///
/// @param instance An instance of the `DBTEAMGroupUpdateError` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMGroupUpdateError` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMGroupUpdateError * _Nonnull)instance;

///
/// Deserializes `DBTEAMGroupUpdateError` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMGroupUpdateError` API object.
///
/// @return An instantiation of the `DBTEAMGroupUpdateError` object.
///
+ (DBTEAMGroupUpdateError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
