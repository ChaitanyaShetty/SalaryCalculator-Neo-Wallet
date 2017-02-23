///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupSelectorError.h"
#import "DBTEAMGroupUpdateError.h"

#pragma mark - API Object

@implementation DBTEAMGroupUpdateError

#pragma mark - Constructors

- (instancetype)initWithGroupNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupUpdateErrorGroupNotFound;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupUpdateErrorOther;
  }
  return self;
}

- (instancetype)initWithGroupNameAlreadyUsed {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupUpdateErrorGroupNameAlreadyUsed;
  }
  return self;
}

- (instancetype)initWithGroupNameInvalid {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupUpdateErrorGroupNameInvalid;
  }
  return self;
}

- (instancetype)initWithExternalIdAlreadyInUse {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupUpdateErrorExternalIdAlreadyInUse;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isGroupNotFound {
  return _tag == DBTEAMGroupUpdateErrorGroupNotFound;
}

- (BOOL)isOther {
  return _tag == DBTEAMGroupUpdateErrorOther;
}

- (BOOL)isGroupNameAlreadyUsed {
  return _tag == DBTEAMGroupUpdateErrorGroupNameAlreadyUsed;
}

- (BOOL)isGroupNameInvalid {
  return _tag == DBTEAMGroupUpdateErrorGroupNameInvalid;
}

- (BOOL)isExternalIdAlreadyInUse {
  return _tag == DBTEAMGroupUpdateErrorExternalIdAlreadyInUse;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMGroupUpdateErrorGroupNotFound:
    return @"DBTEAMGroupUpdateErrorGroupNotFound";
  case DBTEAMGroupUpdateErrorOther:
    return @"DBTEAMGroupUpdateErrorOther";
  case DBTEAMGroupUpdateErrorGroupNameAlreadyUsed:
    return @"DBTEAMGroupUpdateErrorGroupNameAlreadyUsed";
  case DBTEAMGroupUpdateErrorGroupNameInvalid:
    return @"DBTEAMGroupUpdateErrorGroupNameInvalid";
  case DBTEAMGroupUpdateErrorExternalIdAlreadyInUse:
    return @"DBTEAMGroupUpdateErrorExternalIdAlreadyInUse";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMGroupUpdateErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMGroupUpdateErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMGroupUpdateErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMGroupUpdateErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMGroupUpdateError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isGroupNotFound]) {
    jsonDict[@".tag"] = @"group_not_found";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else if ([valueObj isGroupNameAlreadyUsed]) {
    jsonDict[@".tag"] = @"group_name_already_used";
  } else if ([valueObj isGroupNameInvalid]) {
    jsonDict[@".tag"] = @"group_name_invalid";
  } else if ([valueObj isExternalIdAlreadyInUse]) {
    jsonDict[@".tag"] = @"external_id_already_in_use";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMGroupUpdateError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"group_not_found"]) {
    return [[DBTEAMGroupUpdateError alloc] initWithGroupNotFound];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMGroupUpdateError alloc] initWithOther];
  } else if ([tag isEqualToString:@"group_name_already_used"]) {
    return [[DBTEAMGroupUpdateError alloc] initWithGroupNameAlreadyUsed];
  } else if ([tag isEqualToString:@"group_name_invalid"]) {
    return [[DBTEAMGroupUpdateError alloc] initWithGroupNameInvalid];
  } else if ([tag isEqualToString:@"external_id_already_in_use"]) {
    return [[DBTEAMGroupUpdateError alloc] initWithExternalIdAlreadyInUse];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
