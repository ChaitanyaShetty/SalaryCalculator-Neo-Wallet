///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMTeamFolderStatus.h"

#pragma mark - API Object

@implementation DBTEAMTeamFolderStatus

#pragma mark - Constructors

- (instancetype)initWithActive {
  self = [super init];
  if (self) {
    _tag = DBTEAMTeamFolderStatusActive;
  }
  return self;
}

- (instancetype)initWithArchived {
  self = [super init];
  if (self) {
    _tag = DBTEAMTeamFolderStatusArchived;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMTeamFolderStatusOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isActive {
  return _tag == DBTEAMTeamFolderStatusActive;
}

- (BOOL)isArchived {
  return _tag == DBTEAMTeamFolderStatusArchived;
}

- (BOOL)isOther {
  return _tag == DBTEAMTeamFolderStatusOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMTeamFolderStatusActive:
    return @"DBTEAMTeamFolderStatusActive";
  case DBTEAMTeamFolderStatusArchived:
    return @"DBTEAMTeamFolderStatusArchived";
  case DBTEAMTeamFolderStatusOther:
    return @"DBTEAMTeamFolderStatusOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMTeamFolderStatusSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMTeamFolderStatusSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMTeamFolderStatusSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMTeamFolderStatusSerializer

+ (NSDictionary *)serialize:(DBTEAMTeamFolderStatus *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isActive]) {
    jsonDict[@".tag"] = @"active";
  } else if ([valueObj isArchived]) {
    jsonDict[@".tag"] = @"archived";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMTeamFolderStatus *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"active"]) {
    return [[DBTEAMTeamFolderStatus alloc] initWithActive];
  } else if ([tag isEqualToString:@"archived"]) {
    return [[DBTEAMTeamFolderStatus alloc] initWithArchived];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMTeamFolderStatus alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
