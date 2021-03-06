//
//  Copyright (c) 2020 Open Whisper Systems. All rights reserved.
//

NS_ASSUME_NONNULL_BEGIN

@class SDSAnyReadTransaction;
@class TSAttachment;
@class TSAttachmentPointer;
@class TSAttachmentStream;
@class TSMessage;

typedef void (^AttachmentDownloadSuccess)(TSAttachmentStream *attachmentStream);
typedef void (^AttachmentDownloadFailure)(NSError *error);

@interface OWSAttachmentDownloadJob : NSObject

@property (nonatomic, readonly) NSString *attachmentId;
@property (nonatomic, readonly, nullable) TSMessage *message;
@property (nonatomic, readonly) AttachmentDownloadSuccess success;
@property (nonatomic, readonly) AttachmentDownloadFailure failure;
@property (atomic) CGFloat progress;

@end

#pragma mark -

// TODO: We might want to pull out a protocol, convert this to an impl
//       and use a mock in our tests.
/**
 * Given incoming attachment protos, determines which we support.
 * It can download those that we support and notifies threads when it receives unsupported attachments.
 */
@interface OWSAttachmentDownloads : NSObject

- (nullable NSNumber *)downloadProgressForAttachmentId:(NSString *)attachmentId;

// This will try to download all un-downloaded _body_ attachments for a given message.
// Any attachments for the message which are already downloaded are skipped BUT
// they are included in the success callback.
//
// success/failure are always called on a worker queue.
- (void)downloadBodyAttachmentsForMessage:(TSMessage *)message
              bypassPendingMessageRequest:(BOOL)bypassPendingMessageRequest
                              transaction:(SDSAnyReadTransaction *)transaction
                                  success:(void (^)(NSArray<TSAttachmentStream *> *attachmentStreams))success
                                  failure:(void (^)(NSError *error))failure;

// This will try to download all un-downloaded attachments for a given message.
// Any attachments for the message which are already downloaded are skipped BUT
// they are included in the success callback.
//
// success/failure are always called on a worker queue.
- (void)downloadAllAttachmentsForMessage:(TSMessage *)message
             bypassPendingMessageRequest:(BOOL)bypassPendingMessageRequest
                             transaction:(SDSAnyReadTransaction *)transaction
                                 success:(void (^)(NSArray<TSAttachmentStream *> *attachmentStreams))success
                                 failure:(void (^)(NSError *error))failure;

// This will try to download a single attachment.
//
// success/failure are always called on a worker queue.
- (void)downloadAttachmentPointer:(TSAttachmentPointer *)attachmentPointer
                          message:(TSMessage *)message
      bypassPendingMessageRequest:(BOOL)bypassPendingMessageRequest
                          success:(void (^)(NSArray<TSAttachmentStream *> *attachmentStreams))success
                          failure:(void (^)(NSError *error))failure;

// This will try to download a single attachment.
//
// success/failure are always called on a worker queue.
- (void)downloadAttachmentPointer:(TSAttachmentPointer *)attachmentPointer
      bypassPendingMessageRequest:(BOOL)bypassPendingMessageRequest
                          success:(void (^)(NSArray<TSAttachmentStream *> *attachmentStreams))success
                          failure:(void (^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
