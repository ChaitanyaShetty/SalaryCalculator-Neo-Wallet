///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESListFolderContinueArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESListFolderContinueArg

#pragma mark - Constructors

- (instancetype)initWithCursor:(NSString *)cursor {
  [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:nil](cursor);

  self = [super init];
  if (self) {
    _cursor = cursor;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESListFolderContinueArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESListFolderContinueArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESListFolderContinueArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESListFolderContinueArgSerializer

+ (NSDictionary *)serialize:(DBFILESListFolderContinueArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"cursor"] = valueObj.cursor;

  return jsonDict;
}

+ (DBFILESListFolderContinueArg *)deserialize:(NSDictionary *)valueDict {
  NSString *cursor = valueDict[@"cursor"];

  return [[DBFILESListFolderContinueArg alloc] initWithCursor:cursor];
}

@end
