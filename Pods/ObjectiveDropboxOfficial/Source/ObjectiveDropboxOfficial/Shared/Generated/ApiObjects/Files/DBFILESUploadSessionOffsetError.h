///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBFILESUploadSessionOffsetError;

#pragma mark - API Object

///
/// The `UploadSessionOffsetError` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBFILESUploadSessionOffsetError : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The offset up to which data has been collected.
@property (nonatomic, readonly) NSNumber * _Nonnull correctOffset;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param correctOffset The offset up to which data has been collected.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithCorrectOffset:(NSNumber * _Nonnull)correctOffset;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `UploadSessionOffsetError` struct.
///
@interface DBFILESUploadSessionOffsetErrorSerializer : NSObject

///
/// Serializes `DBFILESUploadSessionOffsetError` instances.
///
/// @param instance An instance of the `DBFILESUploadSessionOffsetError` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBFILESUploadSessionOffsetError` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESUploadSessionOffsetError * _Nonnull)instance;

///
/// Deserializes `DBFILESUploadSessionOffsetError` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBFILESUploadSessionOffsetError` API object.
///
/// @return An instantiation of the `DBFILESUploadSessionOffsetError` object.
///
+ (DBFILESUploadSessionOffsetError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
