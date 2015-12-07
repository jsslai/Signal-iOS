// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Provisioning.pb.h"
// @@protoc_insertion_point(imports)

@implementation ProvisioningRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [ProvisioningRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface ProvisionEnvelope ()
@property (strong) NSData* publicKey;
@property (strong) NSData* body;
@end

@implementation ProvisionEnvelope

- (BOOL) hasPublicKey {
  return !!hasPublicKey_;
}
- (void) setHasPublicKey:(BOOL) value_ {
  hasPublicKey_ = !!value_;
}
@synthesize publicKey;
- (BOOL) hasBody {
  return !!hasBody_;
}
- (void) setHasBody:(BOOL) value_ {
  hasBody_ = !!value_;
}
@synthesize body;
- (id) init {
  if ((self = [super init])) {
    self.publicKey = [NSData data];
    self.body = [NSData data];
  }
  return self;
}
static ProvisionEnvelope* defaultProvisionEnvelopeInstance = nil;
+ (void) initialize {
  if (self == [ProvisionEnvelope class]) {
    defaultProvisionEnvelopeInstance = [[ProvisionEnvelope alloc] init];
  }
}
+ (ProvisionEnvelope*) defaultInstance {
  return defaultProvisionEnvelopeInstance;
}
- (ProvisionEnvelope*) defaultInstance {
  return defaultProvisionEnvelopeInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasPublicKey) {
    [output writeData:1 value:self.publicKey];
  }
  if (self.hasBody) {
    [output writeData:2 value:self.body];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasPublicKey) {
    size_ += computeDataSize(1, self.publicKey);
  }
  if (self.hasBody) {
    size_ += computeDataSize(2, self.body);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (ProvisionEnvelope*) parseFromData:(NSData*) data {
  return (ProvisionEnvelope*)[[[ProvisionEnvelope builder] mergeFromData:data] build];
}
+ (ProvisionEnvelope*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ProvisionEnvelope*)[[[ProvisionEnvelope builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ProvisionEnvelope*) parseFromInputStream:(NSInputStream*) input {
  return (ProvisionEnvelope*)[[[ProvisionEnvelope builder] mergeFromInputStream:input] build];
}
+ (ProvisionEnvelope*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ProvisionEnvelope*)[[[ProvisionEnvelope builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ProvisionEnvelope*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ProvisionEnvelope*)[[[ProvisionEnvelope builder] mergeFromCodedInputStream:input] build];
}
+ (ProvisionEnvelope*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ProvisionEnvelope*)[[[ProvisionEnvelope builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ProvisionEnvelopeBuilder*) builder {
  return [[ProvisionEnvelopeBuilder alloc] init];
}
+ (ProvisionEnvelopeBuilder*) builderWithPrototype:(ProvisionEnvelope*) prototype {
  return [[ProvisionEnvelope builder] mergeFrom:prototype];
}
- (ProvisionEnvelopeBuilder*) builder {
  return [ProvisionEnvelope builder];
}
- (ProvisionEnvelopeBuilder*) toBuilder {
  return [ProvisionEnvelope builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasPublicKey) {
    [output appendFormat:@"%@%@: %@\n", indent, @"publicKey", self.publicKey];
  }
  if (self.hasBody) {
    [output appendFormat:@"%@%@: %@\n", indent, @"body", self.body];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[ProvisionEnvelope class]]) {
    return NO;
  }
  ProvisionEnvelope *otherMessage = other;
  return
      self.hasPublicKey == otherMessage.hasPublicKey &&
      (!self.hasPublicKey || [self.publicKey isEqual:otherMessage.publicKey]) &&
      self.hasBody == otherMessage.hasBody &&
      (!self.hasBody || [self.body isEqual:otherMessage.body]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasPublicKey) {
    hashCode = hashCode * 31 + [self.publicKey hash];
  }
  if (self.hasBody) {
    hashCode = hashCode * 31 + [self.body hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface ProvisionEnvelopeBuilder()
@property (strong) ProvisionEnvelope* result;
@end

@implementation ProvisionEnvelopeBuilder
@synthesize result;
- (id) init {
  if ((self = [super init])) {
    self.result = [[ProvisionEnvelope alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (ProvisionEnvelopeBuilder*) clear {
  self.result = [[ProvisionEnvelope alloc] init];
  return self;
}
- (ProvisionEnvelopeBuilder*) clone {
  return [ProvisionEnvelope builderWithPrototype:result];
}
- (ProvisionEnvelope*) defaultInstance {
  return [ProvisionEnvelope defaultInstance];
}
- (ProvisionEnvelope*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ProvisionEnvelope*) buildPartial {
  ProvisionEnvelope* returnMe = result;
  self.result = nil;
  return returnMe;
}
- (ProvisionEnvelopeBuilder*) mergeFrom:(ProvisionEnvelope*) other {
  if (other == [ProvisionEnvelope defaultInstance]) {
    return self;
  }
  if (other.hasPublicKey) {
    [self setPublicKey:other.publicKey];
  }
  if (other.hasBody) {
    [self setBody:other.body];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ProvisionEnvelopeBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ProvisionEnvelopeBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setPublicKey:[input readData]];
        break;
      }
      case 18: {
        [self setBody:[input readData]];
        break;
      }
    }
  }
}
- (BOOL) hasPublicKey {
  return result.hasPublicKey;
}
- (NSData*) publicKey {
  return result.publicKey;
}
- (ProvisionEnvelopeBuilder*) setPublicKey:(NSData*) value {
  result.hasPublicKey = YES;
  result.publicKey = value;
  return self;
}
- (ProvisionEnvelopeBuilder*) clearPublicKey {
  result.hasPublicKey = NO;
  result.publicKey = [NSData data];
  return self;
}
- (BOOL) hasBody {
  return result.hasBody;
}
- (NSData*) body {
  return result.body;
}
- (ProvisionEnvelopeBuilder*) setBody:(NSData*) value {
  result.hasBody = YES;
  result.body = value;
  return self;
}
- (ProvisionEnvelopeBuilder*) clearBody {
  result.hasBody = NO;
  result.body = [NSData data];
  return self;
}
@end

@interface ProvisionMessage ()
@property (strong) NSData* identityKeyPublic;
@property (strong) NSData* identityKeyPrivate;
@property (strong) NSString* number;
@property (strong) NSString* provisioningCode;
@end

@implementation ProvisionMessage

- (BOOL) hasIdentityKeyPublic {
  return !!hasIdentityKeyPublic_;
}
- (void) setHasIdentityKeyPublic:(BOOL) value_ {
  hasIdentityKeyPublic_ = !!value_;
}
@synthesize identityKeyPublic;
- (BOOL) hasIdentityKeyPrivate {
  return !!hasIdentityKeyPrivate_;
}
- (void) setHasIdentityKeyPrivate:(BOOL) value_ {
  hasIdentityKeyPrivate_ = !!value_;
}
@synthesize identityKeyPrivate;
- (BOOL) hasNumber {
  return !!hasNumber_;
}
- (void) setHasNumber:(BOOL) value_ {
  hasNumber_ = !!value_;
}
@synthesize number;
- (BOOL) hasProvisioningCode {
  return !!hasProvisioningCode_;
}
- (void) setHasProvisioningCode:(BOOL) value_ {
  hasProvisioningCode_ = !!value_;
}
@synthesize provisioningCode;
- (id) init {
  if ((self = [super init])) {
    self.identityKeyPublic = [NSData data];
    self.identityKeyPrivate = [NSData data];
    self.number = @"";
    self.provisioningCode = @"";
  }
  return self;
}
static ProvisionMessage* defaultProvisionMessageInstance = nil;
+ (void) initialize {
  if (self == [ProvisionMessage class]) {
    defaultProvisionMessageInstance = [[ProvisionMessage alloc] init];
  }
}
+ (ProvisionMessage*) defaultInstance {
  return defaultProvisionMessageInstance;
}
- (ProvisionMessage*) defaultInstance {
  return defaultProvisionMessageInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasIdentityKeyPublic) {
    [output writeData:1 value:self.identityKeyPublic];
  }
  if (self.hasIdentityKeyPrivate) {
    [output writeData:2 value:self.identityKeyPrivate];
  }
  if (self.hasNumber) {
    [output writeString:3 value:self.number];
  }
  if (self.hasProvisioningCode) {
    [output writeString:4 value:self.provisioningCode];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasIdentityKeyPublic) {
    size_ += computeDataSize(1, self.identityKeyPublic);
  }
  if (self.hasIdentityKeyPrivate) {
    size_ += computeDataSize(2, self.identityKeyPrivate);
  }
  if (self.hasNumber) {
    size_ += computeStringSize(3, self.number);
  }
  if (self.hasProvisioningCode) {
    size_ += computeStringSize(4, self.provisioningCode);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (ProvisionMessage*) parseFromData:(NSData*) data {
  return (ProvisionMessage*)[[[ProvisionMessage builder] mergeFromData:data] build];
}
+ (ProvisionMessage*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ProvisionMessage*)[[[ProvisionMessage builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ProvisionMessage*) parseFromInputStream:(NSInputStream*) input {
  return (ProvisionMessage*)[[[ProvisionMessage builder] mergeFromInputStream:input] build];
}
+ (ProvisionMessage*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ProvisionMessage*)[[[ProvisionMessage builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ProvisionMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ProvisionMessage*)[[[ProvisionMessage builder] mergeFromCodedInputStream:input] build];
}
+ (ProvisionMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ProvisionMessage*)[[[ProvisionMessage builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ProvisionMessageBuilder*) builder {
  return [[ProvisionMessageBuilder alloc] init];
}
+ (ProvisionMessageBuilder*) builderWithPrototype:(ProvisionMessage*) prototype {
  return [[ProvisionMessage builder] mergeFrom:prototype];
}
- (ProvisionMessageBuilder*) builder {
  return [ProvisionMessage builder];
}
- (ProvisionMessageBuilder*) toBuilder {
  return [ProvisionMessage builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasIdentityKeyPublic) {
    [output appendFormat:@"%@%@: %@\n", indent, @"identityKeyPublic", self.identityKeyPublic];
  }
  if (self.hasIdentityKeyPrivate) {
    [output appendFormat:@"%@%@: %@\n", indent, @"identityKeyPrivate", self.identityKeyPrivate];
  }
  if (self.hasNumber) {
    [output appendFormat:@"%@%@: %@\n", indent, @"number", self.number];
  }
  if (self.hasProvisioningCode) {
    [output appendFormat:@"%@%@: %@\n", indent, @"provisioningCode", self.provisioningCode];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[ProvisionMessage class]]) {
    return NO;
  }
  ProvisionMessage *otherMessage = other;
  return
      self.hasIdentityKeyPublic == otherMessage.hasIdentityKeyPublic &&
      (!self.hasIdentityKeyPublic || [self.identityKeyPublic isEqual:otherMessage.identityKeyPublic]) &&
      self.hasIdentityKeyPrivate == otherMessage.hasIdentityKeyPrivate &&
      (!self.hasIdentityKeyPrivate || [self.identityKeyPrivate isEqual:otherMessage.identityKeyPrivate]) &&
      self.hasNumber == otherMessage.hasNumber &&
      (!self.hasNumber || [self.number isEqual:otherMessage.number]) &&
      self.hasProvisioningCode == otherMessage.hasProvisioningCode &&
      (!self.hasProvisioningCode || [self.provisioningCode isEqual:otherMessage.provisioningCode]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasIdentityKeyPublic) {
    hashCode = hashCode * 31 + [self.identityKeyPublic hash];
  }
  if (self.hasIdentityKeyPrivate) {
    hashCode = hashCode * 31 + [self.identityKeyPrivate hash];
  }
  if (self.hasNumber) {
    hashCode = hashCode * 31 + [self.number hash];
  }
  if (self.hasProvisioningCode) {
    hashCode = hashCode * 31 + [self.provisioningCode hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface ProvisionMessageBuilder()
@property (strong) ProvisionMessage* result;
@end

@implementation ProvisionMessageBuilder
@synthesize result;
- (id) init {
  if ((self = [super init])) {
    self.result = [[ProvisionMessage alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (ProvisionMessageBuilder*) clear {
  self.result = [[ProvisionMessage alloc] init];
  return self;
}
- (ProvisionMessageBuilder*) clone {
  return [ProvisionMessage builderWithPrototype:result];
}
- (ProvisionMessage*) defaultInstance {
  return [ProvisionMessage defaultInstance];
}
- (ProvisionMessage*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ProvisionMessage*) buildPartial {
  ProvisionMessage* returnMe = result;
  self.result = nil;
  return returnMe;
}
- (ProvisionMessageBuilder*) mergeFrom:(ProvisionMessage*) other {
  if (other == [ProvisionMessage defaultInstance]) {
    return self;
  }
  if (other.hasIdentityKeyPublic) {
    [self setIdentityKeyPublic:other.identityKeyPublic];
  }
  if (other.hasIdentityKeyPrivate) {
    [self setIdentityKeyPrivate:other.identityKeyPrivate];
  }
  if (other.hasNumber) {
    [self setNumber:other.number];
  }
  if (other.hasProvisioningCode) {
    [self setProvisioningCode:other.provisioningCode];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ProvisionMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ProvisionMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setIdentityKeyPublic:[input readData]];
        break;
      }
      case 18: {
        [self setIdentityKeyPrivate:[input readData]];
        break;
      }
      case 26: {
        [self setNumber:[input readString]];
        break;
      }
      case 34: {
        [self setProvisioningCode:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasIdentityKeyPublic {
  return result.hasIdentityKeyPublic;
}
- (NSData*) identityKeyPublic {
  return result.identityKeyPublic;
}
- (ProvisionMessageBuilder*) setIdentityKeyPublic:(NSData*) value {
  result.hasIdentityKeyPublic = YES;
  result.identityKeyPublic = value;
  return self;
}
- (ProvisionMessageBuilder*) clearIdentityKeyPublic {
  result.hasIdentityKeyPublic = NO;
  result.identityKeyPublic = [NSData data];
  return self;
}
- (BOOL) hasIdentityKeyPrivate {
  return result.hasIdentityKeyPrivate;
}
- (NSData*) identityKeyPrivate {
  return result.identityKeyPrivate;
}
- (ProvisionMessageBuilder*) setIdentityKeyPrivate:(NSData*) value {
  result.hasIdentityKeyPrivate = YES;
  result.identityKeyPrivate = value;
  return self;
}
- (ProvisionMessageBuilder*) clearIdentityKeyPrivate {
  result.hasIdentityKeyPrivate = NO;
  result.identityKeyPrivate = [NSData data];
  return self;
}
- (BOOL) hasNumber {
  return result.hasNumber;
}
- (NSString*) number {
  return result.number;
}
- (ProvisionMessageBuilder*) setNumber:(NSString*) value {
  result.hasNumber = YES;
  result.number = value;
  return self;
}
- (ProvisionMessageBuilder*) clearNumber {
  result.hasNumber = NO;
  result.number = @"";
  return self;
}
- (BOOL) hasProvisioningCode {
  return result.hasProvisioningCode;
}
- (NSString*) provisioningCode {
  return result.provisioningCode;
}
- (ProvisionMessageBuilder*) setProvisioningCode:(NSString*) value {
  result.hasProvisioningCode = YES;
  result.provisioningCode = value;
  return self;
}
- (ProvisionMessageBuilder*) clearProvisioningCode {
  result.hasProvisioningCode = NO;
  result.provisioningCode = @"";
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
