.class public Lcom/liquable/nemo/chat/model/ChattingManager;
.super Ljava/lang/Object;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;,
        Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;
    }
.end annotation


# static fields
.field private static final MAX_PICTURE_TEXT_LENGTH:I = 0x1f4

.field private static final MSG_PER_CHAT_GROUP_AFTER_ARCHIVAL:J = 0x12cL

.field private static final MSG_PER_CHAT_GROUP_TO_ARCHIVAL:J = 0x258L

.field public static final PAINT_BACKGROUND_COLOR:I = -0x121213

.field private static final debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;


# instance fields
.field private final accountDao:Lcom/liquable/nemo/db/AccountDao;

.field private final accountService:Lcom/liquable/nemo/client/service/IAccountService;

.field private final broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

.field private final chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

.field private final chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

.field private final chattingService:Lcom/liquable/nemo/client/service/IChattingService;

.field private final currentChatGroupTopic:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

.field private final fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

.field private final friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

.field private final isChatGroupScrolledToBottom:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final messageDao:Lcom/liquable/nemo/db/MessageDao;

.field private final nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

.field private final noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

.field private final notifyManager:Lcom/liquable/nemo/android/NotifyManager;

.field private final pref:Lcom/liquable/nemo/util/Pref;

.field private final redundantMessageCheckingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s3HttpClient:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;->getLogger()Lcom/liquable/nemo/util/RemoteAccessLog;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/chat/model/ChattingManager;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/db/ChatGroupDao;Lcom/liquable/nemo/db/MessageDao;Lcom/liquable/nemo/client/service/IChattingService;Lcom/liquable/nemo/friend/model/FriendManager;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/group/model/ChatGroupManager;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/android/NotifyManager;Lcom/liquable/nemo/android/service/FileTransferManager;Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;Lcom/liquable/nemo/notice/model/NoticeManager;Lcom/liquable/nemo/db/DeletedMessageIdDao;Lcom/liquable/nemo/client/service/IAccountService;)V
    .locals 2
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "accountDao"    # Lcom/liquable/nemo/db/AccountDao;
    .param p3, "chatGroupDao"    # Lcom/liquable/nemo/db/ChatGroupDao;
    .param p4, "messageDao"    # Lcom/liquable/nemo/db/MessageDao;
    .param p5, "chattingService"    # Lcom/liquable/nemo/client/service/IChattingService;
    .param p6, "friendManager"    # Lcom/liquable/nemo/friend/model/FriendManager;
    .param p7, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;
    .param p8, "chatGroupManager"    # Lcom/liquable/nemo/group/model/ChatGroupManager;
    .param p9, "broadcastService"    # Lcom/liquable/nemo/android/BroadcastManager;
    .param p10, "notifyManager"    # Lcom/liquable/nemo/android/NotifyManager;
    .param p11, "fileTransferManager"    # Lcom/liquable/nemo/android/service/FileTransferManager;
    .param p12, "s3HttpClient"    # Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;
    .param p13, "noticeManager"    # Lcom/liquable/nemo/notice/model/NoticeManager;
    .param p14, "deletedMessageIdDao"    # Lcom/liquable/nemo/db/DeletedMessageIdDao;
    .param p15, "accountService"    # Lcom/liquable/nemo/client/service/IAccountService;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    .line 222
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->currentChatGroupTopic:Ljava/util/concurrent/atomic/AtomicReference;

    .line 223
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->isChatGroupScrolledToBottom:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 224
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->redundantMessageCheckingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 251
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 252
    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    .line 253
    iput-object p3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    .line 254
    iput-object p4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    .line 255
    iput-object p5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    .line 256
    iput-object p6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 257
    iput-object p7, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 258
    iput-object p8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 259
    iput-object p9, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    .line 260
    iput-object p10, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    .line 261
    iput-object p11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 262
    iput-object p12, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->s3HttpClient:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    .line 263
    iput-object p13, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    .line 264
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

    .line 265
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/storage/NemoFileService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadLocationThumbThenSend(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/db/MessageDao;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/NotifyManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/model/ChattingManager;Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveWallpaperFitXY(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/db/ChatGroupDao;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/util/Pref;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;
    .param p1, "x1"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "x2"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/client/service/IChattingService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/service/FileTransferManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/chat/model/ChattingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/liquable/nemo/chat/model/ChattingManager;->lambda$changeToUseOfflineSequence$17()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->lambda$null$15(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->lambda$null$16(Ljava/lang/Exception;)V

    return-void
.end method

.method private cacheMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->redundantMessageCheckingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->redundantMessageCheckingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->redundantMessageCheckingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 297
    :cond_0
    return-void
.end method

.method private changeToUseOfflineSequence()V
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isUseOfflineSequence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    :goto_0
    return-void

    .line 1571
    :cond_0
    invoke-static {p0}, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/chat/model/ChattingManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/future/Futures;->eventLoop(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private checkIfRedundant(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 2
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->exist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->redundantMessageCheckingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private compressAndEncryptFile(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawFileUri"    # Landroid/net/Uri;
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "rawBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "thumbKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p6, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 327
    move-object/from16 v0, p4

    invoke-static {p1, v0}, Lcom/liquable/nemo/util/ImageUtils;->encodeSecret(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 328
    .local v2, "encodedSecret":Landroid/graphics/Bitmap;
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    const/16 p4, 0x0

    .line 332
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x43c00000    # 384.0f

    div-float/2addr v11, v12

    .line 334
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x43c00000    # 384.0f

    div-float/2addr v12, v13

    .line 332
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 337
    .local v4, "finalScale":F
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 338
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 339
    .local v8, "resultWidth":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 341
    .local v7, "resultHeight":I
    const/4 v11, 0x1

    invoke-static {v2, v8, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 345
    .local v9, "thumbnailBitmap":Landroid/graphics/Bitmap;
    if-nez v9, :cond_0

    .line 346
    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "scale thumbnail bitmap failed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 347
    const/4 v11, 0x0

    .line 397
    .end local v4    # "finalScale":F
    .end local v7    # "resultHeight":I
    .end local v8    # "resultWidth":I
    .end local v9    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return v11

    .line 350
    .restart local v4    # "finalScale":F
    .restart local v7    # "resultHeight":I
    .restart local v8    # "resultWidth":I
    .restart local v9    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/liquable/nemo/storage/NemoFileService;->createFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v10

    .line 351
    .local v10, "thumbnailFile":Ljava/io/File;
    move-object/from16 v0, p3

    invoke-static {v0, v9, v10}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 352
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    const/4 v9, 0x0

    .line 354
    invoke-direct {p0, v10}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 355
    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v12, "write thumbnail picture file fail, may be disk full"

    invoke-virtual {v11, v12}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    const/4 v11, 0x0

    goto :goto_0

    .line 359
    .end local v4    # "finalScale":F
    .end local v7    # "resultHeight":I
    .end local v8    # "resultWidth":I
    .end local v9    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "thumbnailFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v12, "Save thumbnail picture failed"

    invoke-virtual {v11, v12, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    const/4 v11, 0x0

    goto :goto_0

    .line 366
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "finalScale":F
    .restart local v7    # "resultHeight":I
    .restart local v8    # "resultWidth":I
    .restart local v9    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "thumbnailFile":Ljava/io/File;
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Lcom/liquable/nemo/storage/NemoFileService;->createFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v6

    .line 368
    .local v6, "pictureFile":Ljava/io/File;
    new-instance v5, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v5}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 371
    .local v5, "outputStream":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    const/16 v11, 0x3c

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v11, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 372
    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "compress bitmap failed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    const/4 v11, 0x0

    .line 380
    :try_start_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    const/4 v2, 0x0

    .line 382
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 384
    .end local v5    # "outputStream":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .end local v6    # "pictureFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 385
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v12, "Save encrypted picture failed"

    invoke-virtual {v11, v12, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    const/4 v11, 0x0

    goto :goto_0

    .line 377
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "outputStream":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .restart local v6    # "pictureFile":Ljava/io/File;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->encryptBitmap([B)[B

    move-result-object v3

    .line 378
    .local v3, "encrypted":[B
    invoke-static {v6, v3}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 380
    :try_start_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    const/4 v2, 0x0

    .line 382
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_2

    .line 392
    invoke-direct {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 393
    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v12, "write picture file fail, may be disk full"

    invoke-virtual {v11, v12}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 394
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 380
    .end local v3    # "encrypted":[B
    :catchall_0
    move-exception v11

    :try_start_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    const/4 v2, 0x0

    .line 382
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_2

    .line 387
    .end local v5    # "outputStream":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .end local v6    # "pictureFile":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 388
    .local v1, "e":Ljava/security/GeneralSecurityException;
    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "encrypt failed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 397
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .restart local v3    # "encrypted":[B
    .restart local v5    # "outputStream":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .restart local v6    # "pictureFile":Ljava/io/File;
    :cond_3
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private createAudioMessages(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)Ljava/util/List;
    .locals 12
    .param p2, "albumArtFile"    # Ljava/io/File;
    .param p3, "assetFile"    # Ljava/io/File;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "thumbnailWidth"    # I
    .param p6, "thumbnailHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/AudioMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/AudioMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 408
    .local v8, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 409
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 411
    :goto_1
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 414
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getBestS3Endpoint()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 408
    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/message/model/AudioMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/liquable/nemo/message/model/AudioMessage;

    move-result-object v9

    .line 415
    .local v9, "message":Lcom/liquable/nemo/message/model/AudioMessage;
    invoke-virtual {v8}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/liquable/nemo/message/model/AudioMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 417
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-direct {p0, v9, v8}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    goto :goto_0

    .line 409
    .end local v9    # "message":Lcom/liquable/nemo/message/model/AudioMessage;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 420
    .end local v8    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_1
    return-object v10
.end method

.method private createLocationMessage(Ljava/util/List;Lcom/liquable/nemo/map/SharableLocation;Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/util/List;
    .locals 8
    .param p2, "location"    # Lcom/liquable/nemo/map/SharableLocation;
    .param p3, "thumbLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/map/SharableLocation;",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/LocationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, p3}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v4

    .line 428
    .local v4, "thumbFile":Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/LocationMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 431
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 432
    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getBestS3Endpoint()Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-static {p2, v6, v7}, Lcom/liquable/nemo/message/model/LocationMessage;->createBySender(Lcom/liquable/nemo/map/SharableLocation;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/LocationMessage;

    move-result-object v2

    .line 433
    .local v2, "locationMessage":Lcom/liquable/nemo/message/model/LocationMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 434
    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    .line 433
    invoke-static {v6, v7}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/liquable/nemo/message/model/LocationMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 435
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 436
    .local v1, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-direct {p0, v2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    goto :goto_0

    .line 439
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "found":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v2    # "locationMessage":Lcom/liquable/nemo/message/model/LocationMessage;
    :cond_0
    return-object v3
.end method

.method private createPaintMessages(Ljava/util/List;Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/util/List;
    .locals 11
    .param p2, "assetLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/PaintMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 446
    .local v8, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PaintMessage;>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, p2}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v9

    .line 448
    .local v9, "paintFile":Ljava/io/File;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 449
    .local v6, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 453
    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getBestS3Endpoint()Ljava/lang/String;

    move-result-object v5

    .line 449
    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/message/model/PaintMessage;->createBySender(Ljava/lang/String;JIILjava/lang/String;)Lcom/liquable/nemo/message/model/PaintMessage;

    move-result-object v7

    .line 454
    .local v7, "message":Lcom/liquable/nemo/message/model/PaintMessage;
    invoke-virtual {v6}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/liquable/nemo/message/model/PaintMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 455
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-direct {p0, v7, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    goto :goto_0

    .line 458
    .end local v6    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v7    # "message":Lcom/liquable/nemo/message/model/PaintMessage;
    :cond_0
    return-object v8
.end method

.method private createPictureMessages(Ljava/util/List;Ljava/io/File;Ljava/io/File;IIIILjava/lang/String;)Ljava/util/List;
    .locals 14
    .param p2, "thumbFile"    # Ljava/io/File;
    .param p3, "assetFile"    # Ljava/io/File;
    .param p4, "thumbnailWidth"    # I
    .param p5, "thumbnailHeight"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "IIII",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/PictureMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    .local v11, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PictureMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 472
    .local v10, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 480
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getBestS3Endpoint()Ljava/lang/String;

    move-result-object v9

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 472
    invoke-static/range {v0 .. v9}, Lcom/liquable/nemo/message/model/PictureMessage;->create(Ljava/lang/String;Ljava/lang/String;JIIIILjava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/PictureMessage;

    move-result-object v12

    .line 481
    .local v12, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v10}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 482
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/liquable/nemo/message/model/PictureMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 484
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-direct {p0, v12, v10}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    goto :goto_0

    .line 487
    .end local v10    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v12    # "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    :cond_0
    return-object v11
.end method

.method private createRemoteKeyPathTransferListener(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 491
    new-instance v0, Lcom/liquable/nemo/chat/model/ChattingManager$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager$1;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    return-object v0
.end method

.method private createSecretPictureMessages(Ljava/util/List;Ljava/lang/String;Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/util/List;
    .locals 9
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/SecretPictureMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, p3}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v3

    .line 513
    .local v3, "pictureFile":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/SecretPictureMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 515
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 516
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 518
    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getBestS3Endpoint()Ljava/lang/String;

    move-result-object v8

    .line 515
    invoke-static {v5, v6, v7, p2, v8}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->createBySender(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/SecretPictureMessage;

    move-result-object v1

    .line 520
    .local v1, "message":Lcom/liquable/nemo/message/model/SecretPictureMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 522
    invoke-direct {p0, v1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 523
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "message":Lcom/liquable/nemo/message/model/SecretPictureMessage;
    :cond_0
    return-object v2
.end method

.method private createVideoMessages(Ljava/util/List;Ljava/io/File;Ljava/io/File;II)Ljava/util/List;
    .locals 11
    .param p2, "videoFile"    # Ljava/io/File;
    .param p3, "thumbnailFile"    # Ljava/io/File;
    .param p4, "thumbnailWidth"    # I
    .param p5, "thumbnailHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/VideoMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 552
    .local v8, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VideoMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 553
    .local v7, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz p3, :cond_0

    .line 554
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 556
    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 560
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getBestS3Endpoint()Ljava/lang/String;

    move-result-object v6

    move v4, p4

    move/from16 v5, p5

    .line 553
    invoke-static/range {v0 .. v6}, Lcom/liquable/nemo/message/model/VideoMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/liquable/nemo/message/model/VideoMessage;

    move-result-object v9

    .line 561
    .local v9, "videoMessage":Lcom/liquable/nemo/message/model/VideoMessage;
    invoke-virtual {v7}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 562
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/liquable/nemo/message/model/VideoMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 564
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-direct {p0, v9, v7}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    goto :goto_0

    .line 554
    .end local v9    # "videoMessage":Lcom/liquable/nemo/message/model/VideoMessage;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 567
    .end local v7    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_1
    return-object v8
.end method

.method private createVoiceMessages(Ljava/util/List;Lcom/liquable/nemo/storage/LocalKeyPath;J)Ljava/util/List;
    .locals 11
    .param p2, "assetLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/VoiceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, p2}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v9

    .line 574
    .local v9, "voiceFile":Ljava/io/File;
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    .local v8, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VoiceMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 576
    .local v6, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 579
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getBestS3Endpoint()Ljava/lang/String;

    move-result-object v5

    move-wide v3, p3

    .line 576
    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/message/model/VoiceMessage;->createBySender(Ljava/lang/String;JJLjava/lang/String;)Lcom/liquable/nemo/message/model/VoiceMessage;

    move-result-object v7

    .line 581
    .local v7, "message":Lcom/liquable/nemo/message/model/VoiceMessage;
    invoke-virtual {v6}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/liquable/nemo/message/model/VoiceMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 582
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-direct {p0, v7, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    goto :goto_0

    .line 585
    .end local v6    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v7    # "message":Lcom/liquable/nemo/message/model/VoiceMessage;
    :cond_0
    return-object v8
.end method

.method private fileHasContent(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 746
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private forwardLocationMessage(Lcom/liquable/nemo/message/model/LocationMessage;Ljava/util/List;)Z
    .locals 5
    .param p1, "locationMsg"    # Lcom/liquable/nemo/message/model/LocationMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/LocationMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 805
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/liquable/nemo/message/model/LocationMessage;->isSender(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 820
    .local v2, "thumLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    invoke-static {p1}, Lcom/liquable/nemo/map/SharableLocation;->fromMessage(Lcom/liquable/nemo/message/model/LocationMessage;)Lcom/liquable/nemo/map/SharableLocation;

    move-result-object v3

    .line 819
    invoke-direct {p0, p2, v3, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->createLocationMessage(Ljava/util/List;Lcom/liquable/nemo/map/SharableLocation;Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/util/List;

    move-result-object v1

    .line 822
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/LocationMessage;>;"
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadLocationThumbThenSend(Ljava/util/List;)V

    .line 823
    const/4 v3, 0x1

    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/LocationMessage;>;"
    :goto_1
    return v3

    .line 808
    .end local v2    # "thumLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 809
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 811
    .restart local v2    # "thumLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "copy location thumb file failed:"

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 815
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private forwardYoutubeMessage(Lcom/liquable/nemo/message/model/YoutubeMessage;Ljava/util/List;)Z
    .locals 7
    .param p1, "youtubeMessage"    # Lcom/liquable/nemo/message/model/YoutubeMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/YoutubeMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1010
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 1011
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1012
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getVideoId()Ljava/lang/String;

    move-result-object v5

    .line 1013
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 1011
    invoke-static {v4, v5, v6}, Lcom/liquable/nemo/message/model/YoutubeMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/YoutubeMessage;

    move-result-object v2

    .line 1014
    .local v2, "message":Lcom/liquable/nemo/message/model/YoutubeMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/message/model/YoutubeMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 1015
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 1016
    .local v1, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, v2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 1017
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v4, v2}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0

    .line 1019
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "found":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v2    # "message":Lcom/liquable/nemo/message/model/YoutubeMessage;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private getTempPaintFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 1040
    const-string/jumbo v0, "_temp.jpg"

    invoke-static {v0}, Lcom/liquable/nemo/message/model/PaintMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getVideoThumbnailWidthHeight(Landroid/graphics/Bitmap;)Landroid/util/Pair;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/high16 v5, 0x439b0000    # 310.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x136

    .line 1048
    if-nez p1, :cond_0

    .line 1049
    new-instance v4, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1050
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1072
    :goto_0
    return-object v4

    .line 1053
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1054
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1056
    .local v1, "height":I
    if-ge v3, v6, :cond_1

    if-ge v1, v6, :cond_1

    .line 1057
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1060
    :cond_1
    int-to-float v4, v3

    div-float v2, v4, v5

    .line 1061
    .local v2, "wRatio":F
    int-to-float v4, v1

    div-float v0, v4, v5

    .line 1063
    .local v0, "hRatio":F
    if-le v3, v6, :cond_3

    if-le v1, v6, :cond_3

    .line 1064
    cmpl-float v4, v2, v0

    if-lez v4, :cond_2

    .line 1065
    new-instance v4, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-float v6, v1

    mul-float/2addr v6, v7

    div-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1067
    :cond_2
    new-instance v4, Landroid/util/Pair;

    int-to-float v5, v3

    mul-float/2addr v5, v7

    div-float/2addr v5, v0

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1069
    :cond_3
    if-le v3, v6, :cond_4

    .line 1070
    new-instance v4, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-float v6, v1

    mul-float/2addr v6, v7

    div-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1072
    :cond_4
    new-instance v4, Landroid/util/Pair;

    int-to-float v5, v3

    mul-float/2addr v5, v7

    div-float/2addr v5, v0

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private synthetic lambda$changeToUseOfflineSequence$17()V
    .locals 3

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/client/service/IAccountService;->updateUseOfflineSequence(Z)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {p0}, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$2;->lambdaFactory$(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/future/Consumer;

    move-result-object v1

    .line 1573
    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    invoke-static {p0}, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$3;->lambdaFactory$(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/future/Consumer;

    move-result-object v2

    .line 1577
    invoke-interface {v0, v1, v2}, Lcom/liquable/future/IFuture;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    .line 1579
    return-void
.end method

.method private synthetic lambda$null$15(Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Ljava/lang/Void;

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setUseOfflineSequence(Z)V

    .line 1575
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "Changed to use OfflineSequence"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 1576
    return-void
.end method

.method private synthetic lambda$null$16(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "could not updateUseOfflineSequence in server, abort"

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private processDomainMessage(Lcom/liquable/nemo/message/model/DomainMessage;Z)Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    .locals 11
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "notifyServerIsReceivedMessage"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1392
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->checkIfRedundant(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1393
    invoke-static {v4}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->success(Z)Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;

    move-result-object v6

    .line 1519
    :cond_0
    :goto_0
    return-object v6

    .line 1396
    :cond_1
    const/4 v1, 0x0

    .line 1397
    .local v1, "analyticsReceiveDisabled":Z
    const/4 v2, 0x0

    .line 1400
    .local v2, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :try_start_0
    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v9

    .line 1401
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isHidden()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    .line 1400
    :goto_1
    invoke-virtual {v8, v9, v6}, Lcom/liquable/nemo/group/model/ChatGroupManager;->recoverChatGroup(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    .line 1403
    if-nez v2, :cond_3

    .line 1404
    invoke-static {}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->fail()Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1518
    if-eqz v1, :cond_0

    .line 1519
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableReceiveMessage(Z)V

    goto :goto_0

    :cond_2
    move v6, v4

    .line 1401
    goto :goto_1

    .line 1407
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v5

    .line 1408
    .local v5, "isSendFromSubAccount":Z
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_5

    .line 1409
    :cond_4
    const/4 v1, 0x1

    .line 1411
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableReceiveMessage(Z)V

    .line 1414
    :cond_5
    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 1415
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isHidden()Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    .line 1414
    :goto_2
    invoke-virtual {v8, v9, v6}, Lcom/liquable/nemo/friend/model/FriendManager;->recoverFriends(Ljava/util/List;Z)V

    .line 1417
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/liquable/nemo/group/model/ChatGroup;->containsMember(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1418
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v8

    .line 1419
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isVisible()Z

    move-result v9

    .line 1418
    invoke-virtual {v6, v8, v9}, Lcom/liquable/nemo/group/model/ChatGroupManager;->recoverChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    .line 1420
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/liquable/nemo/group/model/ChatGroup;->containsMember(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1421
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/liquable/nemo/group/model/ChatGroupManager;->deactivateMember(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_6
    if-eqz v5, :cond_9

    .line 1426
    instance-of v6, p1, Lcom/liquable/nemo/message/model/ISecret;

    if-eqz v6, :cond_8

    .line 1428
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->success(Z)Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    :try_end_1
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1518
    if-eqz v1, :cond_0

    .line 1519
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableReceiveMessage(Z)V

    goto/16 :goto_0

    :cond_7
    move v6, v4

    .line 1415
    goto :goto_2

    .line 1432
    :cond_8
    :try_start_2
    sget-object v6, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    invoke-virtual {p1, v6}, Lcom/liquable/nemo/message/model/DomainMessage;->setSendState(Lcom/liquable/nemo/message/model/DomainMessage$SendState;)V

    .line 1433
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/liquable/nemo/message/model/DomainMessage;->setReadMark(Z)V

    .line 1436
    :cond_9
    instance-of v6, p1, Lcom/liquable/nemo/message/model/TextMessage;

    if-eqz v6, :cond_d

    .line 1437
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/TextMessage;

    move-object v6, v0

    invoke-virtual {p0, v2, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveTextMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/TextMessage;)Z

    .line 1438
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveTextMessage()V

    .line 1502
    :cond_a
    :goto_3
    if-eqz p2, :cond_b

    .line 1503
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/liquable/nemo/client/service/IChattingService;->sendReceiveAck(Ljava/lang/String;)V

    .line 1506
    :cond_b
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->cacheMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 1507
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isHidden()Z

    move-result v6

    if-nez v6, :cond_26

    .line 1508
    invoke-direct {p0, p1, v2, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;Z)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1510
    if-nez v5, :cond_c

    move v4, v7

    .line 1511
    .local v4, "isNewVisible":Z
    :cond_c
    invoke-static {v4}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->success(Z)Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    :try_end_2
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 1518
    if-eqz v1, :cond_0

    .line 1519
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableReceiveMessage(Z)V

    goto/16 :goto_0

    .line 1439
    .end local v4    # "isNewVisible":Z
    :cond_d
    :try_start_3
    instance-of v6, p1, Lcom/liquable/nemo/message/model/LikePictureMessage;

    if-eqz v6, :cond_e

    .line 1440
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/LikePictureMessage;

    move-object v6, v0

    invoke-virtual {p0, v2, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveLikePictureMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/LikePictureMessage;)Z

    .line 1441
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveLikePictureMessage()V
    :try_end_3
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1515
    .end local v5    # "isSendFromSubAccount":Z
    :catch_0
    move-exception v3

    .line 1516
    .local v3, "e":Lcom/liquable/nemo/client/AsyncException;
    :try_start_4
    invoke-static {}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->fail()Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 1518
    if-eqz v1, :cond_0

    .line 1519
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableReceiveMessage(Z)V

    goto/16 :goto_0

    .line 1442
    .end local v3    # "e":Lcom/liquable/nemo/client/AsyncException;
    .restart local v5    # "isSendFromSubAccount":Z
    :cond_e
    :try_start_5
    instance-of v6, p1, Lcom/liquable/nemo/message/model/SecretTextMessage;

    if-eqz v6, :cond_10

    .line 1443
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/SecretTextMessage;

    move-object v6, v0

    invoke-virtual {p0, v2, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveSecretMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/SecretTextMessage;)Z

    .line 1444
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveSecretTextMessage()V
    :try_end_5
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1518
    .end local v5    # "isSendFromSubAccount":Z
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_f

    .line 1519
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableReceiveMessage(Z)V

    :cond_f
    throw v6

    .line 1445
    .restart local v5    # "isSendFromSubAccount":Z
    :cond_10
    :try_start_6
    instance-of v6, p1, Lcom/liquable/nemo/message/model/DeleteMessage;

    if-eqz v6, :cond_11

    .line 1446
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/DeleteMessage;

    move-object v6, v0

    invoke-direct {p0, v2, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveDeleteMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/DeleteMessage;)V

    goto :goto_3

    .line 1447
    :cond_11
    instance-of v6, p1, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;

    if-eqz v6, :cond_12

    .line 1448
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveCreateChatGroupMessage(Lcom/liquable/nemo/message/model/CreateChatGroupMessage;)V

    goto/16 :goto_3

    .line 1449
    :cond_12
    instance-of v6, p1, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    if-eqz v6, :cond_13

    .line 1450
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    move-object v6, v0

    invoke-virtual {p0, v2, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveAddChatGroupMemberMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;)V

    goto/16 :goto_3

    .line 1451
    :cond_13
    instance-of v6, p1, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;

    if-eqz v6, :cond_14

    .line 1452
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveLeaveChatGroupMessage(Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;)V

    goto/16 :goto_3

    .line 1453
    :cond_14
    instance-of v6, p1, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    if-eqz v6, :cond_15

    .line 1454
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    move-object v6, v0

    invoke-direct {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveRemoveChatGroupMemberMessage(Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;)V

    goto/16 :goto_3

    .line 1455
    :cond_15
    instance-of v6, p1, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;

    if-eqz v6, :cond_16

    .line 1456
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;

    move-object v6, v0

    invoke-direct {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveChangeChatGroupOwnerMessage(Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;)V

    goto/16 :goto_3

    .line 1457
    :cond_16
    instance-of v6, p1, Lcom/liquable/nemo/message/model/ReadedAckMessage;

    if-eqz v6, :cond_17

    .line 1458
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/ReadedAckMessage;

    move-object v6, v0

    invoke-virtual {p0, v2, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveReadedAckMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/ReadedAckMessage;)V

    goto/16 :goto_3

    .line 1459
    :cond_17
    instance-of v6, p1, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    if-eqz v6, :cond_18

    .line 1460
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    move-object v6, v0

    invoke-virtual {p0, v2, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveUpdateGroupNameMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;)V

    goto/16 :goto_3

    .line 1461
    :cond_18
    instance-of v6, p1, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    if-eqz v6, :cond_19

    .line 1462
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    move-object v6, v0

    invoke-direct {p0, v2, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveUpdateGroupIconMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V

    goto/16 :goto_3

    .line 1463
    :cond_19
    instance-of v6, p1, Lcom/liquable/nemo/message/model/InviteFriendMessage;

    if-eqz v6, :cond_1a

    .line 1464
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/InviteFriendMessage;

    move-object v6, v0

    invoke-direct {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveInviteFriendMessage(Lcom/liquable/nemo/message/model/InviteFriendMessage;)V

    .line 1465
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveFriendInvitation(I)V

    goto/16 :goto_3

    .line 1466
    :cond_1a
    instance-of v6, p1, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;

    if-eqz v6, :cond_1b

    .line 1467
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;

    move-object v6, v0

    invoke-direct {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveConfirmFriendMessage(Lcom/liquable/nemo/message/model/ConfirmFriendMessage;)V

    goto/16 :goto_3

    .line 1468
    :cond_1b
    instance-of v6, p1, Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;

    if-eqz v6, :cond_1c

    .line 1469
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveChannelUnsubscribeMessage(Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;)V

    goto/16 :goto_3

    .line 1470
    :cond_1c
    instance-of v6, p1, Lcom/liquable/nemo/message/model/StickerMessage;

    if-eqz v6, :cond_1d

    .line 1471
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/StickerMessage;

    move-object v6, v0

    invoke-virtual {p0, v2, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveStickerMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/StickerMessage;)Z

    .line 1472
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveStickerMessage()V

    goto/16 :goto_3

    .line 1473
    :cond_1d
    instance-of v6, p1, Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;

    if-eqz v6, :cond_1e

    .line 1474
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveBecomeOneWayFriendMessage(Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;)V

    goto/16 :goto_3

    .line 1475
    :cond_1e
    instance-of v6, p1, Lcom/liquable/nemo/message/model/AskPictureMessage;

    if-eqz v6, :cond_1f

    .line 1476
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveAskPictureMessage()V

    goto/16 :goto_3

    .line 1477
    :cond_1f
    instance-of v6, p1, Lcom/liquable/nemo/message/model/AskLocationMessage;

    if-eqz v6, :cond_20

    .line 1478
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveAskLocationMessage()V

    goto/16 :goto_3

    .line 1479
    :cond_20
    instance-of v6, p1, Lcom/liquable/nemo/message/model/YoutubeMessage;

    if-eqz v6, :cond_21

    .line 1480
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveYoutubeMessage()V

    goto/16 :goto_3

    .line 1481
    :cond_21
    instance-of v6, p1, Lcom/liquable/nemo/message/model/MissedCallMessage;

    if-nez v6, :cond_a

    .line 1482
    instance-of v6, p1, Lcom/liquable/nemo/message/model/FileMessage;

    if-nez v6, :cond_a

    .line 1486
    instance-of v6, p1, Lcom/liquable/nemo/message/model/IMediaMessage;

    if-eqz v6, :cond_22

    .line 1487
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/IMediaMessage;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveMediaMessage(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto/16 :goto_3

    .line 1488
    :cond_22
    instance-of v6, p1, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    if-eqz v6, :cond_23

    .line 1489
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveCustomStickerMessage()V

    goto/16 :goto_3

    .line 1490
    :cond_23
    instance-of v6, p1, Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    if-eqz v6, :cond_24

    .line 1491
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveOpenApiAppMessage()V

    goto/16 :goto_3

    .line 1492
    :cond_24
    instance-of v6, p1, Lcom/liquable/nemo/message/model/PubChannelMessage;

    if-eqz v6, :cond_25

    .line 1493
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receivePubChannelMessage()V

    goto/16 :goto_3

    .line 1494
    :cond_25
    instance-of v6, p1, Lcom/liquable/nemo/message/model/UnknownMessage;

    if-nez v6, :cond_a

    .line 1497
    sget-object v6, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    sget-object v8, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    if-eq v6, v8, :cond_a

    .line 1498
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lack of receiveMethod  for message:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1514
    :cond_26
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->success(Z)Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    :try_end_6
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    .line 1518
    if-eqz v1, :cond_0

    .line 1519
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableReceiveMessage(Z)V

    goto/16 :goto_0
.end method

.method private receiveChangeChatGroupOwnerMessage(Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->syncChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    .line 1642
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    .line 1643
    return-void
.end method

.method private receiveConfirmFriendMessage(Lcom/liquable/nemo/message/model/ConfirmFriendMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/ConfirmFriendMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->addFriend(Ljava/lang/String;)V

    .line 1660
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->receive_confirm:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->addFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)V

    .line 1661
    return-void
.end method

.method private receiveDeleteMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/DeleteMessage;)V
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "deleteMessage"    # Lcom/liquable/nemo/message/model/DeleteMessage;

    .prologue
    .line 1667
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/DeleteMessage;->getTargetMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    .line 1668
    .local v0, "found":Lcom/liquable/nemo/message/model/DomainMessage;
    if-nez v0, :cond_0

    .line 1672
    :goto_0
    return-void

    .line 1671
    :cond_0
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0
.end method

.method private receiveInviteFriendMessage(Lcom/liquable/nemo/message/model/InviteFriendMessage;)V
    .locals 2
    .param p1, "inviteFriendMessage"    # Lcom/liquable/nemo/message/model/InviteFriendMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/InviteFriendMessage;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->addWaitConfirmFriend(Ljava/lang/String;)V

    .line 1732
    return-void
.end method

.method private receivePictureMessage(Lcom/liquable/nemo/message/model/PictureMessage;)V
    .locals 3
    .param p1, "pictureMessage"    # Lcom/liquable/nemo/message/model/PictureMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1878
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    invoke-virtual {p1, v2}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    .line 1885
    invoke-virtual {p1, v2}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 1883
    invoke-virtual {p0, p1, v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 1900
    :goto_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receivePictureMessage()V

    .line 1901
    return-void

    .line 1896
    :cond_0
    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    .line 1897
    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 1895
    invoke-virtual {p0, p1, v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    goto :goto_0
.end method

.method private receiveRemoveChatGroupMemberMessage(Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    .prologue
    .line 1934
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->getToBeRemovedUid()Ljava/lang/String;

    move-result-object v1

    .line 1937
    .local v1, "toBeRemovedUid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    .line 1939
    .local v2, "topic":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1940
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v3, v2, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->deactivateMember(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 1945
    .local v0, "removedGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_0

    .line 1949
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->setRemovedByOwner(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 1950
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupRemovedByOwner(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private receiveUpdateGroupIconMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "updateGroupIconMessage"    # Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    .prologue
    .line 1969
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 1970
    .local v0, "localKeyPathOfIcon":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 1971
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadChatGroupIcon(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 1972
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadUpdateChatGroupIcon(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V

    .line 1973
    return-void
.end method

.method private redressFileUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1990
    const-string/jumbo v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1991
    move-object v1, p1

    .line 2001
    :cond_0
    :goto_0
    return-object v1

    .line 1992
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1993
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1994
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1997
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1998
    .local v1, "fileUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 2048
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;Z)Z

    move-result v0

    return v0
.end method

.method private saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;Z)Z
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p3, "fromSubAccount"    # Z

    .prologue
    .line 2054
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/MessageDao;->insert(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    move-result v0

    .line 2055
    .local v0, "success":Z
    if-eqz v0, :cond_2

    .line 2056
    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->hasRecentPicture()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v1, :cond_0

    .line 2057
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/liquable/nemo/group/model/ChatGroup;->setHasRecentPicture(Z)V

    .line 2058
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->hasRecentPicture()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/db/ChatGroupDao;->updateHasRecentPicture(Ljava/lang/String;Z)V

    .line 2060
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/liquable/nemo/group/model/ChatGroup;->setLastUpdateTime(Ljava/util/Date;)V

    .line 2061
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/db/ChatGroupDao;->updateLastUpdateTime(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 2063
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    .line 2064
    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnreadCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lcom/liquable/nemo/group/model/ChatGroup;->setUnreadCount(I)V

    .line 2065
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/db/ChatGroupDao;->updateUnreadCount(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 2067
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, p1, p3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNewMessage(Lcom/liquable/nemo/message/model/IDomainMessage;Z)V

    .line 2069
    :cond_2
    return v0
.end method

.method private saveWallpaperFitXY(Landroid/content/Context;Ljava/io/File;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 2198
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 2242
    :cond_0
    :goto_0
    return-void

    .line 2201
    :cond_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2202
    .local v9, "sampleBitmapOption":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2203
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 2204
    .local v8, "pathName":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2206
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 2207
    .local v16, "width":I
    iget v7, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2208
    .local v7, "height":I
    invoke-static/range {p1 .. p1}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v14

    .line 2209
    .local v14, "screenWidth":I
    invoke-static/range {p1 .. p1}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v13

    .line 2211
    .local v13, "screenHeight":I
    if-lt v13, v7, :cond_2

    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 2216
    :cond_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v15, v17, v18

    .line 2217
    .local v15, "wRatio":F
    int-to-float v0, v7

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    div-float v6, v17, v18

    .line 2218
    .local v6, "hRatio":F
    move v12, v14

    .line 2219
    .local v12, "scaledWidth":I
    move v11, v13

    .line 2221
    .local v11, "scaledHeight":I
    cmpl-float v17, v15, v6

    if-lez v17, :cond_3

    .line 2222
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v6

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v12, v0

    .line 2227
    :goto_1
    invoke-static {v8, v12, v11}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleUpOrDownToBitmap(Ljava/lang/String;II)Lcom/liquable/nemo/util/Optional;

    move-result-object v10

    .line 2230
    .local v10, "scaledBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v10}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2231
    const/4 v4, 0x0

    .line 2233
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v10}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2238
    invoke-virtual {v10}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 2239
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 2224
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v10    # "scaledBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :cond_3
    int-to-float v0, v7

    move/from16 v17, v0

    div-float v17, v17, v15

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v11, v0

    goto :goto_1

    .line 2235
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "scaledBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :catch_0
    move-exception v3

    .line 2236
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2238
    invoke-virtual {v10}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 2239
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 2238
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v17

    move-object/from16 v18, v17

    :goto_3
    invoke-virtual {v10}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 2239
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v18

    .line 2238
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v17

    move-object/from16 v18, v17

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 2235
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private sendAskMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/AskMessage;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/AskMessage;

    .prologue
    .line 2249
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/liquable/nemo/message/model/AskMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2250
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 2251
    .local v0, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, p2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 2252
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v1, p2}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2253
    return-void
.end method

.method private sendAudioMessages(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 18
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "ext"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "albumArtUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2321
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2323
    .local v16, "mediaUid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2324
    .local v4, "albumArtFile":Ljava/io/File;
    const/4 v7, -0x1

    .line 2325
    .local v7, "thumbnailWidth":I
    const/4 v8, -0x1

    .line 2326
    .local v8, "thumbnailHeight":I
    if-eqz p5, :cond_1

    .line 2327
    const/4 v14, 0x0

    .line 2328
    .local v14, "decodeAlbumArtComplete":Z
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/liquable/nemo/util/ImageUtils;->decodeAlbumArtToBitmap(Ljava/lang/String;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v9

    .line 2331
    .local v9, "albumArtBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v9}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2332
    invoke-virtual {v9}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2333
    invoke-virtual {v9}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2336
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "_s.jpg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/liquable/nemo/message/model/AudioMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v10

    .line 2338
    .local v10, "albumArtKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v10}, Lcom/liquable/nemo/storage/NemoFileService;->createFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v4

    .line 2339
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v4}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 2340
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2341
    const/4 v14, 0x1

    .line 2348
    .end local v10    # "albumArtKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :cond_0
    :goto_0
    if-nez v14, :cond_1

    .line 2349
    const/4 v4, 0x0

    .line 2350
    const/4 v7, -0x1

    .line 2351
    const/4 v8, -0x1

    .line 2355
    .end local v9    # "albumArtBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    .end local v14    # "decodeAlbumArtComplete":Z
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v11, v16

    .line 2356
    .local v11, "assetFileName":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2, v11}, Lcom/liquable/nemo/message/model/AudioMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v12

    .line 2357
    .local v12, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Lcom/liquable/nemo/storage/NemoFileService;->copyUriToLocalKeyPath(Landroid/net/Uri;Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v13

    .line 2359
    .local v13, "copyMediaFileResult":Z
    if-nez v13, :cond_3

    .line 2360
    const/4 v2, 0x0

    .line 2371
    :goto_2
    return v2

    .line 2343
    .end local v11    # "assetFileName":Ljava/lang/String;
    .end local v12    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v13    # "copyMediaFileResult":Z
    .restart local v9    # "albumArtBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    .restart local v14    # "decodeAlbumArtComplete":Z
    :catch_0
    move-exception v15

    .line 2344
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "write album art failed"

    invoke-virtual {v2, v3, v15}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2355
    .end local v9    # "albumArtBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    .end local v14    # "decodeAlbumArtComplete":Z
    .end local v15    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 2363
    .restart local v11    # "assetFileName":Ljava/lang/String;
    .restart local v12    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .restart local v13    # "copyMediaFileResult":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v12}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v5

    .local v5, "assetFile":Ljava/io/File;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    .line 2364
    invoke-direct/range {v2 .. v8}, Lcom/liquable/nemo/chat/model/ChattingManager;->createAudioMessages(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v17

    .line 2370
    .local v17, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/AudioMessage;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadAudiosThenSend(Ljava/util/List;)V

    .line 2371
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private sendVideoMessages(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 20
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2663
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2664
    .local v10, "mediaUid":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v16, v10

    .line 2666
    .local v16, "toFileName":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/liquable/nemo/message/model/VideoMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v17

    .line 2667
    .local v17, "videoLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->copyUriToLocalKeyPath(Landroid/net/Uri;Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v19

    .line 2668
    .local v19, "writeVideoResult":Z
    if-nez v19, :cond_1

    .line 2669
    const/4 v2, 0x0

    .line 2704
    :goto_1
    return v2

    .line 2664
    .end local v16    # "toFileName":Ljava/lang/String;
    .end local v17    # "videoLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v19    # "writeVideoResult":Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 2672
    .restart local v16    # "toFileName":Ljava/lang/String;
    .restart local v17    # "videoLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .restart local v19    # "writeVideoResult":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v4

    .line 2673
    .local v4, "videoFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 2674
    .local v5, "thumbnailFile":Ljava/io/File;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2675
    .local v8, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    const-string/jumbo v14, ".jpg"

    .line 2676
    .local v14, "thumbnailSuffix":Ljava/lang/String;
    const/4 v15, -0x1

    .line 2677
    .local v15, "thumbnailWidth":I
    const/4 v13, -0x1

    .line 2679
    .local v13, "thumbnailHeight":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const/4 v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/liquable/nemo/message/model/VideoMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->createFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v5

    .line 2681
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2683
    .local v12, "thumbnailBitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_2

    .line 2684
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/liquable/nemo/chat/model/ChattingManager;->getVideoThumbnailWidthHeight(Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object v18

    .line 2685
    .local v18, "widthHeight":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2686
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2687
    invoke-static {v8, v12, v5}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 2689
    .end local v18    # "widthHeight":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    .line 2694
    .end local v12    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    :goto_2
    if-nez v5, :cond_3

    .line 2695
    const/4 v15, -0x1

    .line 2696
    const/4 v13, -0x1

    .line 2698
    :cond_3
    div-int/lit8 v6, v15, 0x2

    div-int/lit8 v7, v13, 0x2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/liquable/nemo/chat/model/ChattingManager;->createVideoMessages(Ljava/util/List;Ljava/io/File;Ljava/io/File;II)Ljava/util/List;

    move-result-object v11

    .line 2703
    .local v11, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VideoMessage;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadVideosThenSend(Ljava/util/List;)V

    .line 2704
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2689
    .end local v11    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VideoMessage;>;"
    .restart local v12    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 2690
    .end local v12    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 2691
    .local v9, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendVideoMessages create file error:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 2692
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private startUploadLocationThumbnailThenSend(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/LocationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "locationMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/LocationMessage;>;"
    const/4 v7, 0x0

    .line 2758
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/LocationMessage;

    .line 2760
    .local v0, "location":Lcom/liquable/nemo/message/model/LocationMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 2762
    .local v3, "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/LocationMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    .line 2764
    .local v2, "remotKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v1

    .line 2765
    .local v1, "mapThumbFile":Ljava/io/File;
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->s3HttpClient:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    invoke-static {v0}, Lcom/liquable/nemo/map/LocationHelper;->getStaticMapUrl(Lcom/liquable/nemo/message/model/LocationMessage;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/liquable/nemo/chat/model/ChattingManager$7;

    invoke-direct {v6, p0, p1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager$7;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    invoke-virtual {v4, v5, v1, v6}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->download(Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;)V

    .line 2783
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v4, v2, v7}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V

    .line 2784
    return-void
.end method

.method private updateResendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 2813
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/DomainMessage;->resend(Ljava/util/Date;)V

    .line 2814
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/MessageDao;->updateMessageCreateTime(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    .line 2815
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/MessageDao;->updateMessageReceiveTime(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    .line 2816
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/MessageDao;->updateMessageSend(Ljava/lang/String;)V

    .line 2818
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 2819
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroup;->setLastUpdateTime(Ljava/util/Date;)V

    .line 2820
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateLastUpdateTime(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 2821
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastResendMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 2822
    return-void
.end method

.method private uploadAudiosThenSend(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/AudioMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "audioMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/AudioMessage;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2830
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/AudioMessage;

    .line 2832
    .local v0, "audioMessage":Lcom/liquable/nemo/message/model/AudioMessage;
    new-instance v1, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;

    invoke-direct {v1}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;-><init>()V

    .line 2834
    .local v1, "uploadBatch":Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AudioMessage;->isAlbumArtExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2835
    invoke-virtual {v0, v3}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 2836
    invoke-virtual {v0, v3}, Lcom/liquable/nemo/message/model/AudioMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    .line 2835
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2839
    :cond_0
    invoke-virtual {v0, v4}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 2840
    invoke-virtual {v0, v4}, Lcom/liquable/nemo/message/model/AudioMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    .line 2839
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2842
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    new-instance v3, Lcom/liquable/nemo/chat/model/ChattingManager$8;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager$8;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPaths(Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 2856
    return-void
.end method

.method private uploadLocationThumbThenSend(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/LocationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2859
    .local p1, "locationMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/LocationMessage;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/LocationMessage;

    .line 2861
    .local v0, "locationMessage":Lcom/liquable/nemo/message/model/LocationMessage;
    new-instance v1, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;

    invoke-direct {v1}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;-><init>()V

    .line 2862
    .local v1, "uploadBatch":Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 2863
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/LocationMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    .line 2862
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2865
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    new-instance v3, Lcom/liquable/nemo/chat/model/ChattingManager$9;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager$9;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPaths(Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 2877
    return-void
.end method

.method private uploadPaintsThenSend(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/PaintMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PaintMessage;>;"
    const/4 v4, 0x0

    .line 2880
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 2881
    .local v0, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/PaintMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 2883
    .local v1, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    new-instance v2, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;

    invoke-direct {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;-><init>()V

    .line 2884
    .local v2, "uploadBatch":Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;
    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2886
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    new-instance v4, Lcom/liquable/nemo/chat/model/ChattingManager$10;

    invoke-direct {v4, p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager$10;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V

    invoke-virtual {v3, p1, v2, v4}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPaths(Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 2897
    return-void
.end method

.method private uploadPicturesThenSend(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/PictureMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PictureMessage;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2901
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 2903
    .local v0, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    new-instance v1, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;

    invoke-direct {v1}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;-><init>()V

    .line 2905
    .local v1, "uploadBatch":Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/PictureMessage;->isLegacy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2906
    invoke-virtual {v0, v3}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 2907
    invoke-virtual {v0, v3}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    .line 2906
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2910
    :cond_0
    invoke-virtual {v0, v4}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 2911
    invoke-virtual {v0, v4}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    .line 2910
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2913
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    new-instance v3, Lcom/liquable/nemo/chat/model/ChattingManager$11;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager$11;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPaths(Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 2925
    return-void
.end method

.method private uploadSecretPicturesThenSend(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/SecretPictureMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/SecretPictureMessage;>;"
    const/4 v4, 0x0

    .line 2928
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 2929
    .local v0, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 2931
    .local v1, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    new-instance v2, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;

    invoke-direct {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;-><init>()V

    .line 2932
    .local v2, "uploadBatch":Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;
    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2933
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    new-instance v4, Lcom/liquable/nemo/chat/model/ChattingManager$12;

    invoke-direct {v4, p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager$12;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V

    invoke-virtual {v3, p1, v2, v4}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPaths(Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 2944
    return-void
.end method

.method private uploadVideosThenSend(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/VideoMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VideoMessage;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2948
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/VideoMessage;

    .line 2950
    .local v1, "videoMessage":Lcom/liquable/nemo/message/model/VideoMessage;
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;

    invoke-direct {v0}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;-><init>()V

    .line 2952
    .local v0, "uploadBatch":Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/VideoMessage;->isThumbnailExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2953
    invoke-virtual {v1, v3}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 2954
    invoke-virtual {v1, v3}, Lcom/liquable/nemo/message/model/VideoMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    .line 2953
    invoke-virtual {v0, v2, v3}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2957
    :cond_0
    invoke-virtual {v1, v4}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 2958
    invoke-virtual {v1, v4}, Lcom/liquable/nemo/message/model/VideoMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    .line 2957
    invoke-virtual {v0, v2, v3}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2960
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    new-instance v3, Lcom/liquable/nemo/chat/model/ChattingManager$13;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager$13;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V

    invoke-virtual {v2, p1, v0, v3}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPaths(Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 2971
    return-void
.end method

.method private uploadVoicesThenSend(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/VoiceMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VoiceMessage;>;"
    const/4 v4, 0x0

    .line 2974
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/VoiceMessage;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/VoiceMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 2975
    .local v0, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/VoiceMessage;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/VoiceMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 2977
    .local v1, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    new-instance v2, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;

    invoke-direct {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;-><init>()V

    .line 2978
    .local v2, "uploadBatch":Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;
    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->addUpload(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2980
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    new-instance v4, Lcom/liquable/nemo/chat/model/ChattingManager$14;

    invoke-direct {v4, p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager$14;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V

    invoke-virtual {v3, p1, v2, v4}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPaths(Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 2990
    return-void
.end method

.method private writePaintFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/liquable/nemo/storage/LocalKeyPath;)Z
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 2997
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, p3}, Lcom/liquable/nemo/storage/NemoFileService;->createFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v4

    .line 2999
    .local v4, "paintFile":Ljava/io/File;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v5}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3000
    const/16 v5, 0x280

    const/16 v6, 0x1e0

    const/4 v7, 0x1

    invoke-static {p1, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3016
    .local v2, "decodedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {p2, v2, v4}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v1

    .line 3020
    .local v1, "compressResult":Z
    if-nez v1, :cond_1

    .line 3021
    const/4 v5, 0x0

    .line 3031
    .end local v1    # "compressResult":Z
    .end local v2    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "paintFile":Ljava/io/File;
    :goto_1
    return v5

    .line 3005
    .restart local v4    # "paintFile":Ljava/io/File;
    :cond_0
    const/16 v5, 0x280

    const/16 v6, 0x1e0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3009
    .restart local v2    # "decodedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3010
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3011
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3012
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3013
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 3011
    invoke-virtual {v0, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3027
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "paintFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 3028
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 3029
    const/4 v5, 0x0

    goto :goto_1

    .line 3024
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "compressResult":Z
    .restart local v2    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "paintFile":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-direct {p0, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 3025
    const/4 v5, 0x0

    goto :goto_1

    .line 3031
    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private writePictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/liquable/nemo/storage/LocalKeyPath;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    const/4 v3, 0x0

    .line 3038
    :try_start_0
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, p3}, Lcom/liquable/nemo/storage/NemoFileService;->createFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v2

    .line 3039
    .local v2, "file":Ljava/io/File;
    const/16 v4, 0x3c

    invoke-static {p2, p1, v2, v4}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result v0

    .line 3043
    .local v0, "compressBitmapResult":Z
    if-nez v0, :cond_1

    .line 3053
    .end local v0    # "compressBitmapResult":Z
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 3046
    .restart local v0    # "compressBitmapResult":Z
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 3053
    const/4 v3, 0x1

    goto :goto_0

    .line 3049
    .end local v0    # "compressBitmapResult":Z
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 3050
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v5, "write picture file failed"

    invoke-virtual {v4, v5, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private writeVoiceFile(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)Z
    .locals 3
    .param p1, "voiceFile"    # Ljava/io/File;
    .param p2, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 3058
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, p1, p2}, Lcom/liquable/nemo/storage/NemoFileService;->copyFileToLocalKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    const/4 v1, 0x1

    .line 3062
    :goto_0
    return v1

    .line 3060
    :catch_0
    move-exception v0

    .line 3061
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "copy voice file failed"

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3062
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public archiveMessages(J)V
    .locals 10
    .param p1, "maxExecutionTime"    # J

    .prologue
    .line 269
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->listAllChatgroupMessageCount()Ljava/util/Map;

    move-result-object v8

    .line 270
    .local v8, "messageCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-wide v6, p1

    .line 271
    .local v6, "executionTimeLeft":J
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "topic":Ljava/lang/String;
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 273
    .local v2, "currentMessageCount":J
    const-wide/16 v4, 0x258

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 274
    sget-object v0, Lcom/liquable/nemo/chat/model/ChattingManager;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CM.archiveMessages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 275
    invoke-virtual {v5, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " currentMessageCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " executionTimeLeft:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Archive"

    .line 274
    invoke-interface {v0, v4, v5}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v7}, Lcom/liquable/nemo/db/MessageDao;->archiveMessages(Ljava/lang/String;JJJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    .line 284
    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    .line 285
    sget-object v0, Lcom/liquable/nemo/chat/model/ChattingManager;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    const-string/jumbo v4, "time\'s up"

    const-string/jumbo v5, "Archive"

    invoke-interface {v0, v4, v5}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v1    # "topic":Ljava/lang/String;
    .end local v2    # "currentMessageCount":J
    :cond_1
    return-void
.end method

.method public cancelDownloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 300
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    .line 301
    .local v0, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/android/service/FileTransferManager;->cancelDownload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 304
    :cond_0
    return-void
.end method

.method public cancelUploadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 307
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAllRemoteKeyPaths()Ljava/util/List;

    move-result-object v1

    .line 308
    .local v1, "remoteKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 309
    .local v0, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/android/service/FileTransferManager;->cancelUpload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    goto :goto_0

    .line 311
    .end local v0    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    :cond_0
    return-void
.end method

.method public createSharablePaintFile(Lcom/liquable/nemo/message/model/PaintMessage;)Ljava/io/File;
    .locals 7
    .param p1, "message"    # Lcom/liquable/nemo/message/model/PaintMessage;

    .prologue
    const/4 v4, 0x0

    .line 529
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 530
    .local v1, "mediaFile":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    .line 542
    :cond_0
    :goto_0
    return-object v3

    .line 533
    :cond_1
    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/liquable/nemo/util/ImageUtils;->createBitmapWithBackground(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 535
    .local v2, "paintWithBgBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/liquable/nemo/chat/model/ChattingManager;->getTempPaintFile()Ljava/io/File;

    move-result-object v3

    .line 536
    .local v3, "resultFile":Ljava/io/File;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v5, v2, v3}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    .line 539
    .local v0, "compressBitmapResult":Z
    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move-object v3, v4

    .line 540
    goto :goto_0
.end method

.method public deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 589
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/db/MessageDao;->delete(Ljava/lang/String;)V

    .line 590
    const/4 v1, 0x0

    .line 591
    .local v1, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    const/4 v3, 0x0

    .line 592
    .local v3, "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    instance-of v4, p1, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    if-eqz v4, :cond_5

    move-object v4, p1

    .line 593
    check-cast v4, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v4}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    move-object v4, p1

    .line 594
    check-cast v4, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v4}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getTemporaryLocalThumbnailKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 603
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 604
    .local v2, "someFileDeleted":Z
    if-eqz v1, :cond_1

    .line 605
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 608
    :cond_1
    if-eqz v3, :cond_2

    .line 609
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 612
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->save(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 617
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 618
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_3

    .line 619
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/db/MessageDao;->getUnreadCount(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/group/model/ChatGroup;->setUnreadCount(I)V

    .line 620
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateUnreadCount(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 621
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupReadCountChange(Ljava/lang/String;)V

    .line 624
    :cond_3
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastMessageDeleted(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 626
    if-eqz v2, :cond_4

    .line 627
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastScanGallery()V

    .line 629
    :cond_4
    return-void

    .line 595
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v2    # "someFileDeleted":Z
    :cond_5
    instance-of v4, p1, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v4, :cond_6

    move-object v4, p1

    .line 596
    check-cast v4, Lcom/liquable/nemo/message/model/PictureMessage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    move-object v4, p1

    .line 597
    check-cast v4, Lcom/liquable/nemo/message/model/PictureMessage;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    goto :goto_0

    .line 598
    :cond_6
    instance-of v4, p1, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 599
    check-cast v4, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v4}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    move-object v4, p1

    .line 600
    check-cast v4, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v4}, Lcom/liquable/nemo/message/model/PaintMessage;->getThumbCacheLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public deleteTempPaint()V
    .locals 1

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/liquable/nemo/chat/model/ChattingManager;->getTempPaintFile()Ljava/io/File;

    move-result-object v0

    .line 633
    .local v0, "resultFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 636
    :cond_0
    return-void
.end method

.method public downloadChatGroupIcon(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 639
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 640
    .local v0, "localKeyPathOfIcon":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getRemoteKeyPathOfIcon()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/chat/model/ChattingManager$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager$2;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 662
    return-void
.end method

.method public downloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 665
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 666
    .local v1, "assetRemoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 668
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 669
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 671
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->createRemoteKeyPathTransferListener(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    move-result-object v3

    .line 669
    invoke-virtual {v2, v1, v0, v3}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 674
    :cond_0
    return-void
.end method

.method public downloadUpdateChatGroupIcon(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V
    .locals 4
    .param p1, "updateGroupIconMessage"    # Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->getRemoteKeyPathOfIcon()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    .line 678
    .local v0, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 679
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/chat/model/ChattingManager$3;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager$3;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V

    .line 678
    invoke-virtual {v1, v0, v2, v3}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 686
    return-void
.end method

.method public downloadWallpaper(Landroid/content/Context;Lcom/liquable/nemo/setting/wallpaper/WallpaperData;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaperData"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    .prologue
    .line 689
    invoke-virtual {p2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 690
    .local v0, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    invoke-virtual {p2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/chat/model/ChattingManager$4;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager$4;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/setting/wallpaper/WallpaperData;Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 717
    return-void
.end method

.method public downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p3, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    new-instance v1, Lcom/liquable/nemo/chat/model/ChattingManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/liquable/nemo/chat/model/ChattingManager$5;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 743
    return-void
.end method

.method public filterByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/db/MessageDao;->listTextMessagesByChatGroupAndKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findByIdReturnTable(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/MessageDao;->findByIdReturnTable(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/MessageDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    return-object v0
.end method

.method public forwardAudioMessages(Lcom/liquable/nemo/message/model/AudioMessage;Ljava/util/List;)Z
    .locals 13
    .param p1, "audioMessage"    # Lcom/liquable/nemo/message/model/AudioMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/AudioMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 766
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/AudioMessage;->isSender(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    invoke-virtual {p1, v12}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v11

    .line 768
    .local v11, "thumLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    .line 787
    .local v7, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v3

    .line 789
    .local v3, "assetFile":Ljava/io/File;
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 790
    invoke-virtual {v11, v0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 792
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 793
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailWidth()I

    move-result v5

    .line 794
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p2

    .line 789
    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->createAudioMessages(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v10

    .line 796
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/AudioMessage;>;"
    invoke-direct {p0, v10}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadAudiosThenSend(Ljava/util/List;)V

    move v0, v12

    .line 798
    .end local v3    # "assetFile":Ljava/io/File;
    .end local v7    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/AudioMessage;>;"
    .end local v11    # "thumLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_1
    return v0

    .line 770
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, "baseName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->isAlbumArtExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_s"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v11

    .line 774
    .restart local v11    # "thumLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 779
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    .line 780
    .restart local v7    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    .end local v7    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v11    # "thumLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :catch_0
    move-exception v9

    .line 783
    .local v9, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "copy forward audio file failed"

    invoke-virtual {v1, v2, v9}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 777
    .end local v9    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    sget-object v11, Lcom/liquable/nemo/storage/VoidLocalKeyPath;->INSTANCE:Lcom/liquable/nemo/storage/VoidLocalKeyPath;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v11    # "thumLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    goto :goto_2
.end method

.method public forwardMessage(Lcom/liquable/nemo/message/model/DomainMessage;Ljava/util/List;)Z
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v1, 0x0

    .line 827
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    .line 828
    .local v0, "found":Lcom/liquable/nemo/message/model/DomainMessage;
    if-nez v0, :cond_1

    .line 849
    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_0
    :goto_0
    return v1

    .line 832
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_1
    instance-of v2, v0, Lcom/liquable/nemo/message/model/TextMessage;

    if-eqz v2, :cond_2

    .line 833
    check-cast v0, Lcom/liquable/nemo/message/model/TextMessage;

    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->forwardTextMessage(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    goto :goto_0

    .line 834
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_2
    instance-of v2, v0, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v2, :cond_3

    .line 835
    check-cast v0, Lcom/liquable/nemo/message/model/PaintMessage;

    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->forwardPaintMessages(Lcom/liquable/nemo/message/model/PaintMessage;Ljava/util/List;)Z

    move-result v1

    goto :goto_0

    .line 836
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_3
    instance-of v2, v0, Lcom/liquable/nemo/message/model/AudioMessage;

    if-eqz v2, :cond_4

    .line 837
    check-cast v0, Lcom/liquable/nemo/message/model/AudioMessage;

    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->forwardAudioMessages(Lcom/liquable/nemo/message/model/AudioMessage;Ljava/util/List;)Z

    move-result v1

    goto :goto_0

    .line 838
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_4
    instance-of v2, v0, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v2, :cond_5

    .line 839
    check-cast v0, Lcom/liquable/nemo/message/model/PictureMessage;

    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->forwardPictureMessages(Lcom/liquable/nemo/message/model/PictureMessage;Ljava/util/List;)Z

    move-result v1

    goto :goto_0

    .line 840
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_5
    instance-of v2, v0, Lcom/liquable/nemo/message/model/VideoMessage;

    if-eqz v2, :cond_6

    .line 841
    check-cast v0, Lcom/liquable/nemo/message/model/VideoMessage;

    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->forwardVideoMessages(Lcom/liquable/nemo/message/model/VideoMessage;Ljava/util/List;)Z

    move-result v1

    goto :goto_0

    .line 842
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_6
    instance-of v2, v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    if-eqz v2, :cond_7

    .line 843
    check-cast v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->forwardVoiceMessages(Lcom/liquable/nemo/message/model/VoiceMessage;Ljava/util/List;)Z

    move-result v1

    goto :goto_0

    .line 844
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_7
    instance-of v2, v0, Lcom/liquable/nemo/message/model/LocationMessage;

    if-eqz v2, :cond_8

    .line 845
    check-cast v0, Lcom/liquable/nemo/message/model/LocationMessage;

    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-direct {p0, v0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->forwardLocationMessage(Lcom/liquable/nemo/message/model/LocationMessage;Ljava/util/List;)Z

    move-result v1

    goto :goto_0

    .line 846
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_8
    instance-of v2, v0, Lcom/liquable/nemo/message/model/YoutubeMessage;

    if-eqz v2, :cond_0

    .line 847
    check-cast v0, Lcom/liquable/nemo/message/model/YoutubeMessage;

    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-direct {p0, v0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->forwardYoutubeMessage(Lcom/liquable/nemo/message/model/YoutubeMessage;Ljava/util/List;)Z

    move-result v1

    goto :goto_0
.end method

.method public forwardPaintMessages(Lcom/liquable/nemo/message/model/PaintMessage;Ljava/util/List;)Z
    .locals 5
    .param p1, "paintMessage"    # Lcom/liquable/nemo/message/model/PaintMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/PaintMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 858
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/liquable/nemo/message/model/PaintMessage;->isSender(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 872
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->createPaintMessages(Ljava/util/List;Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/util/List;

    move-result-object v2

    .line 873
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PaintMessage;>;"
    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadPaintsThenSend(Ljava/util/List;)V

    .line 874
    const/4 v3, 0x1

    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PaintMessage;>;"
    :goto_1
    return v3

    .line 861
    .end local v0    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 862
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 864
    .restart local v0    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v1

    .line 867
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "write forward paint message failed"

    invoke-virtual {v3, v4, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public forwardPictureMessages(Lcom/liquable/nemo/message/model/PictureMessage;Ljava/util/List;)Z
    .locals 12
    .param p1, "pictureMessage"    # Lcom/liquable/nemo/message/model/PictureMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/PictureMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 889
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v9, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/liquable/nemo/message/model/PictureMessage;->isSender(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 890
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    .line 891
    .local v7, "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 910
    .local v1, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    iget-object v9, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v9, v7}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v8

    .line 911
    .local v8, "thumbnailFile":Ljava/io/File;
    iget-object v9, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v9, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v0

    .line 913
    .local v0, "assetFile":Ljava/io/File;
    invoke-direct {p0, v8}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 914
    :cond_0
    const/4 v9, 0x0

    .line 927
    .end local v0    # "assetFile":Ljava/io/File;
    .end local v8    # "thumbnailFile":Ljava/io/File;
    :goto_1
    return v9

    .line 893
    .end local v1    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v7    # "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "baseName":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    .line 896
    .restart local v7    # "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 899
    .restart local v1    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :try_start_0
    iget-object v9, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 901
    iget-object v9, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v4

    .line 904
    .local v4, "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v10, "copy forward picture file failed"

    invoke-virtual {v9, v10, v4}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 905
    const/4 v9, 0x0

    goto :goto_1

    .line 917
    .end local v2    # "baseName":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "assetFile":Ljava/io/File;
    .restart local v8    # "thumbnailFile":Ljava/io/File;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 918
    .local v6, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PictureMessage;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 919
    .local v3, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v10, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 920
    invoke-virtual {v10}, Lcom/liquable/nemo/util/Pref;->getBestS3Endpoint()Ljava/lang/String;

    move-result-object v10

    .line 919
    invoke-static {p1, v10}, Lcom/liquable/nemo/message/model/PictureMessage;->createForward(Lcom/liquable/nemo/message/model/PictureMessage;Ljava/lang/String;)Lcom/liquable/nemo/message/model/PictureMessage;

    move-result-object v5

    .line 921
    .local v5, "message":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v11}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/liquable/nemo/message/model/PictureMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 922
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-direct {p0, v5, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    goto :goto_2

    .line 926
    .end local v3    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v5    # "message":Lcom/liquable/nemo/message/model/PictureMessage;
    :cond_3
    invoke-direct {p0, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadPicturesThenSend(Ljava/util/List;)V

    .line 927
    const/4 v9, 0x1

    goto/16 :goto_1
.end method

.method public forwardTextMessage(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 931
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 932
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {p1}, Lcom/liquable/nemo/message/model/TextMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/TextMessage;

    move-result-object v2

    .line 933
    .local v2, "textMessage":Lcom/liquable/nemo/message/model/TextMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 934
    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 933
    invoke-static {v4, v5}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/message/model/TextMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 935
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 936
    .local v1, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, v2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 937
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v4, v2}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0

    .line 939
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "found":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v2    # "textMessage":Lcom/liquable/nemo/message/model/TextMessage;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public forwardVideoMessages(Lcom/liquable/nemo/message/model/VideoMessage;Ljava/util/List;)Z
    .locals 12
    .param p1, "videoMessage"    # Lcom/liquable/nemo/message/model/VideoMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/VideoMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 947
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->isSender(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {p1, v11}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v10

    .line 949
    .local v10, "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v6

    .line 971
    .local v6, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v10, v0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v3

    .line 972
    .local v3, "thumbnailFile":Ljava/io/File;
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v6}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v2

    .line 977
    .local v2, "assetFile":Ljava/io/File;
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->getThumbnailWidth()I

    move-result v4

    .line 978
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->getThumbnailHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    .line 974
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->createVideoMessages(Ljava/util/List;Ljava/io/File;Ljava/io/File;II)Ljava/util/List;

    move-result-object v9

    .line 979
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VideoMessage;>;"
    invoke-direct {p0, v9}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadVideosThenSend(Ljava/util/List;)V

    move v0, v11

    .line 980
    .end local v2    # "assetFile":Ljava/io/File;
    .end local v3    # "thumbnailFile":Ljava/io/File;
    .end local v6    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v9    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VideoMessage;>;"
    .end local v10    # "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_1
    return v0

    .line 951
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 954
    .local v7, "baseName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->isThumbnailExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v10

    .line 956
    .restart local v10    # "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 962
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v6

    .line 963
    .restart local v6    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 965
    .end local v6    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v10    # "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :catch_0
    move-exception v8

    .line 966
    .local v8, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "copy forward video file failed"

    invoke-virtual {v1, v4, v8}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 959
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    sget-object v10, Lcom/liquable/nemo/storage/VoidLocalKeyPath;->INSTANCE:Lcom/liquable/nemo/storage/VoidLocalKeyPath;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v10    # "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    goto :goto_2
.end method

.method public forwardVoiceMessages(Lcom/liquable/nemo/message/model/VoiceMessage;Ljava/util/List;)Z
    .locals 5
    .param p1, "voiceMessage"    # Lcom/liquable/nemo/message/model/VoiceMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/VoiceMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 987
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/liquable/nemo/message/model/VoiceMessage;->isSender(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 988
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 1002
    .local v2, "voiceKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getDuration()J

    move-result-wide v3

    .line 1000
    invoke-direct {p0, p2, v2, v3, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->createVoiceMessages(Ljava/util/List;Lcom/liquable/nemo/storage/LocalKeyPath;J)Ljava/util/List;

    move-result-object v1

    .line 1003
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VoiceMessage;>;"
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadVoicesThenSend(Ljava/util/List;)V

    .line 1004
    const/4 v3, 0x1

    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VoiceMessage;>;"
    :goto_1
    return v3

    .line 990
    .end local v2    # "voiceKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 992
    .restart local v2    # "voiceKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "forward write vocie message file failed"

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 996
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAllMessageCountByTopic(Ljava/lang/String;)J
    .locals 4
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-string/jumbo v1, "ARCHIVED_MESSAGES"

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/db/MessageDao;->getCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-string/jumbo v3, "MESSAGES"

    .line 1024
    invoke-virtual {v2, p1, v3}, Lcom/liquable/nemo/db/MessageDao;->getCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/IDomainMessage;
    .locals 1
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/MessageDao;->getLastMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCount(Ljava/lang/String;)J
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-string/jumbo v1, "MESSAGES"

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/db/MessageDao;->getCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainUnreadCount(Lcom/liquable/nemo/group/model/ChatGroup;)J
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/db/MessageDao;->getRemainUnreadCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalUnreadCount()J
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/MessageDao;->getTotalUnreadCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public inviteFriend(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetUid"    # Ljava/lang/String;

    .prologue
    .line 1077
    const/4 v0, 0x0

    return v0
.end method

.method public isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 1083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1084
    const/4 v0, 0x1

    .line 1086
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/client/service/IChattingService;->isWaitSendAck(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isWaitingForSendAck(Lcom/liquable/nemo/message/model/IDomainMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/client/service/IChattingService;->isWaitSendAck(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listAllArchivedMessagesByType(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-string/jumbo v1, "ARCHIVED_MESSAGES"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAndTypeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listAllChatgroupMessageCount()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/MessageDao;->listAllChatgroupMessageCount()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public listAllMessagesByChatGroupAndType(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/liquable/nemo/db/MessageDao;->listAllMessageByChatGroupAndType(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listAllMessagesByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listAllMessagesByType(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-string/jumbo v1, "MESSAGES"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAndTypeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listAllPaintMessages(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-class v1, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/liquable/nemo/db/MessageDao;->listByTypeAndSender(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listArchivedMessagesByTypeAndTime(Ljava/lang/String;Ljava/lang/String;JII)Ljava/util/List;
    .locals 8
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "receiveTime"    # J
    .param p5, "direction"    # I
    .param p6, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-string/jumbo v1, "ARCHIVED_MESSAGES"

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAndTypeAndTimeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listMessages(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "numberOfMessage"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listMessagesByChatGroup(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "pageSize"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/db/MessageDao;->listMessagesByChatGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listMessagesByTypeAndTime(Ljava/lang/String;Ljava/lang/String;JII)Ljava/util/List;
    .locals 8
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "receiveTime"    # J
    .param p5, "direction"    # I
    .param p6, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-string/jumbo v1, "MESSAGES"

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAndTypeAndTimeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public markMessagesAsReaded(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 6
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 1185
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/db/MessageDao;->listUnreadByChatGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1186
    .local v2, "unreadMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnreadCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1190
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 1191
    .local v1, "unread":Lcom/liquable/nemo/message/model/DomainMessage;
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/db/MessageDao;->updateMessageReaded(Ljava/lang/String;)V

    .line 1192
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1193
    new-instance v0, Lcom/liquable/nemo/message/model/ReadedAckMessage;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    .line 1194
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/liquable/nemo/message/model/ReadedAckMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    .local v0, "ack":Lcom/liquable/nemo/message/model/ReadedAckMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/message/model/ReadedAckMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 1196
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v4, v0}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_1

    .line 1199
    .end local v0    # "ack":Lcom/liquable/nemo/message/model/ReadedAckMessage;
    .end local v1    # "unread":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/liquable/nemo/group/model/ChatGroup;->setUnreadCount(I)V

    .line 1200
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateUnreadCount(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 1201
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public modifyChatGroupIcon(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/io/File;)Z
    .locals 15
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "newIconFile"    # Ljava/io/File;

    .prologue
    .line 1205
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1206
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1208
    .local v8, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1209
    .local v12, "randomUid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/liquable/nemo/util/Files;->extractSuffix(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1210
    .local v7, "copiedFileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->createLocalKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v6

    .line 1213
    .local v6, "copiedLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    .line 1212
    invoke-static {v1, v7}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->createRemoteKeyPathOfIcon(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v4

    .line 1216
    .local v4, "copiedRemoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    iget-object v13, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 1217
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getRemoteKeyPathOfIcon()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v14

    new-instance v1, Lcom/liquable/nemo/chat/model/ChattingManager$6;

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/liquable/nemo/chat/model/ChattingManager$6;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/storage/LocalKeyPath;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    .line 1216
    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14, v1}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 1264
    const-wide/16 v1, 0x1e

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    .line 1265
    .local v10, "await":Z
    if-eqz v10, :cond_0

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupIconChanged(Ljava/lang/String;)V

    .line 1267
    const/4 v1, 0x1

    .line 1276
    .end local v10    # "await":Z
    :goto_0
    return v1

    .line 1270
    .restart local v10    # "await":Z
    :cond_0
    if-nez v10, :cond_1

    .line 1271
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "fileTransferManager.uploadUserIcon timeout (30s), abort"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    .end local v10    # "await":Z
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v11

    .line 1274
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public notifyConfirmFriendOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;)V
    .locals 6
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1281
    .local p2, "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 1282
    .local v0, "sender":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/android/NotifyManager;->notifyChannelSubscription(Lcom/liquable/nemo/friend/model/Account;)V

    .line 1284
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    .line 1285
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object v5, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CONFIRM_CHANNEL_SUBSCRIPTION:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .line 1284
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/notice/model/NoticeManager;->insertConfirmFriendNotice(Ljava/lang/String;JLcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)Lcom/liquable/nemo/notice/ConfirmFriendNotice;

    .line 1295
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendConfirmed(Ljava/util/Set;)V

    .line 1296
    return-void

    .line 1288
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1290
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1288
    invoke-virtual {v1, p1, p2, v2}, Lcom/liquable/nemo/android/NotifyManager;->notifyFriendConfirmOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;[Ljava/lang/Object;)V

    .line 1291
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    .line 1292
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object v5, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CONFIRM:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .line 1291
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/notice/model/NoticeManager;->insertConfirmFriendNotice(Ljava/lang/String;JLcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)Lcom/liquable/nemo/notice/ConfirmFriendNotice;

    goto :goto_0
.end method

.method public notifyFriendInviteOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;)V
    .locals 5
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1300
    .local p2, "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 1302
    .local v0, "sender":Lcom/liquable/nemo/friend/model/Account;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, p2, v2}, Lcom/liquable/nemo/android/NotifyManager;->notifyFriendInviteOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;[Ljava/lang/Object;)V

    .line 1303
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendInvitation(Ljava/util/Set;)V

    .line 1304
    return-void
.end method

.method public notifyOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;I)V
    .locals 13
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .param p2, "addCount"    # I

    .prologue
    const v12, 0x7f0d0549

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1307
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->currentChatGroupTopic:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v5

    .line 1313
    .local v5, "sender":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v5, :cond_0

    .line 1319
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    .line 1320
    .local v2, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v2, :cond_0

    .line 1324
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1325
    .local v3, "chatGroupTitle":Ljava/lang/String;
    instance-of v6, p1, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    if-eqz v6, :cond_4

    move-object v6, p1

    .line 1326
    check-cast v6, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    invoke-virtual {v6}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->getFriendUid()Ljava/lang/String;

    move-result-object v1

    .line 1327
    .local v1, "addedFriendUid":Ljava/lang/String;
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1328
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    new-array v7, v8, [Ljava/lang/Object;

    .line 1330
    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 1331
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v3, v7, v11

    .line 1328
    invoke-virtual {v6, p1, p2, v7}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewMsgOnStatusBarWithStyle(Lcom/liquable/nemo/message/model/IDomainMessage;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1334
    :cond_2
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v6, v1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 1335
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    iget-object v7, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    new-array v8, v8, [Ljava/lang/Object;

    .line 1337
    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    if-nez v0, :cond_3

    const-string/jumbo v6, "???"

    .line 1338
    :goto_1
    aput-object v6, v8, v10

    aput-object v3, v8, v11

    .line 1335
    invoke-virtual {v7, p1, p2, v8}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewMsgOnStatusBarWithStyle(Lcom/liquable/nemo/message/model/IDomainMessage;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1338
    :cond_3
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1341
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v1    # "addedFriendUid":Ljava/lang/String;
    :cond_4
    instance-of v6, p1, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    if-eqz v6, :cond_5

    .line 1342
    iget-object v7, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    new-array v8, v11, [Ljava/lang/Object;

    .line 1344
    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    move-object v6, p1

    check-cast v6, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    .line 1345
    invoke-virtual {v6}, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v10

    .line 1342
    invoke-virtual {v7, p1, p2, v8}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewMsgOnStatusBarWithStyle(Lcom/liquable/nemo/message/model/IDomainMessage;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1346
    :cond_5
    instance-of v6, p1, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;

    if-eqz v6, :cond_6

    .line 1347
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    new-array v7, v11, [Ljava/lang/Object;

    .line 1349
    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    .line 1347
    invoke-virtual {v6, p1, p2, v7}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewMsgOnStatusBarWithStyle(Lcom/liquable/nemo/message/model/IDomainMessage;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1351
    :cond_6
    instance-of v6, p1, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    if-eqz v6, :cond_7

    move-object v4, p1

    .line 1352
    check-cast v4, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    .line 1353
    .local v4, "removeMessage":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    new-array v7, v8, [Ljava/lang/Object;

    .line 1355
    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 1356
    invoke-virtual {v4}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->getToBeRemovedName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v3, v7, v11

    .line 1353
    invoke-virtual {v6, v4, p2, v7}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewMsgOnStatusBarWithStyle(Lcom/liquable/nemo/message/model/IDomainMessage;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1358
    .end local v4    # "removeMessage":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    :cond_7
    instance-of v6, p1, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;

    if-eqz v6, :cond_8

    .line 1359
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    new-array v7, v11, [Ljava/lang/Object;

    .line 1361
    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    .line 1359
    invoke-virtual {v6, p1, p2, v7}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewMsgOnStatusBarWithStyle(Lcom/liquable/nemo/message/model/IDomainMessage;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1364
    :cond_8
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    new-array v7, v8, [Ljava/lang/Object;

    .line 1366
    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 1367
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v3, v7, v11

    .line 1364
    invoke-virtual {v6, p1, p2, v7}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewMsgOnStatusBarWithStyle(Lcom/liquable/nemo/message/model/IDomainMessage;I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public openSecret(Lcom/liquable/nemo/message/model/ISecret;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/ISecret;

    .prologue
    .line 1374
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/ISecret;->open()V

    .line 1376
    new-instance v0, Lcom/liquable/nemo/message/model/DeleteMessage;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/ISecret;->getMessageId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/model/DeleteMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    .local v0, "deleteMessage":Lcom/liquable/nemo/message/model/DeleteMessage;
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/ISecret;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 1378
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 1377
    invoke-static {v1, v2}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/DeleteMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 1379
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 1380
    return-void
.end method

.method public processOfflineMesssage()V
    .locals 11

    .prologue
    .line 1525
    const/4 v5, 0x0

    .line 1527
    .local v5, "retryCount":I
    new-instance v0, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager$1;)V

    .line 1530
    .local v0, "calculator":Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getComposteUid()Lcom/liquable/nemo/model/account/CompositeUid;

    move-result-object v1

    .line 1531
    .local v1, "composteUid":Lcom/liquable/nemo/model/account/CompositeUid;
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->start()V

    .line 1535
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->getBatchCount()I

    move-result v6

    .line 1536
    .local v6, "size":I
    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->isUseOfflineSequence()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1537
    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v8, v6}, Lcom/liquable/nemo/client/service/IChattingService;->getNextSync(I)Lcom/liquable/nemo/model/message/OfflineSyncDto;

    move-result-object v4

    .line 1538
    .local v4, "offlineSyncDto":Lcom/liquable/nemo/model/message/OfflineSyncDto;
    invoke-virtual {v4}, Lcom/liquable/nemo/model/message/OfflineSyncDto;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 1543
    .local v3, "offlineMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->end()V

    .line 1544
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 1545
    invoke-direct {p0}, Lcom/liquable/nemo/chat/model/ChattingManager;->changeToUseOfflineSequence()V

    .line 1564
    .end local v1    # "composteUid":Lcom/liquable/nemo/model/account/CompositeUid;
    .end local v3    # "offlineMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    .end local v4    # "offlineSyncDto":Lcom/liquable/nemo/model/message/OfflineSyncDto;
    .end local v6    # "size":I
    :goto_1
    return-void

    .line 1540
    .restart local v1    # "composteUid":Lcom/liquable/nemo/model/account/CompositeUid;
    .restart local v6    # "size":I
    :cond_1
    const/4 v4, 0x0

    .line 1541
    .restart local v4    # "offlineSyncDto":Lcom/liquable/nemo/model/message/OfflineSyncDto;
    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v8, v1, v6}, Lcom/liquable/nemo/client/service/IChattingService;->listOfflineMessages(Lcom/liquable/nemo/model/account/CompositeUid;I)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "offlineMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    goto :goto_0

    .line 1548
    :cond_2
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveOfflineMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1549
    .local v7, "toPurges":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    if-nez v4, :cond_3

    .line 1550
    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v8, v1, v7}, Lcom/liquable/nemo/client/service/IChattingService;->purge(Lcom/liquable/nemo/model/account/CompositeUid;Ljava/util/List;)V

    .line 1554
    :goto_2
    const/4 v5, 0x0

    .line 1560
    .end local v1    # "composteUid":Lcom/liquable/nemo/model/account/CompositeUid;
    .end local v3    # "offlineMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    .end local v4    # "offlineSyncDto":Lcom/liquable/nemo/model/message/OfflineSyncDto;
    .end local v6    # "size":I
    .end local v7    # "toPurges":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    :goto_3
    const/4 v8, 0x3

    if-lt v5, v8, :cond_0

    goto :goto_1

    .line 1552
    .restart local v1    # "composteUid":Lcom/liquable/nemo/model/account/CompositeUid;
    .restart local v3    # "offlineMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    .restart local v4    # "offlineSyncDto":Lcom/liquable/nemo/model/message/OfflineSyncDto;
    .restart local v6    # "size":I
    .restart local v7    # "toPurges":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    :cond_3
    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v8, v4}, Lcom/liquable/nemo/client/service/IChattingService;->acknowledge(Lcom/liquable/nemo/model/message/OfflineSyncDto;)V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1555
    .end local v1    # "composteUid":Lcom/liquable/nemo/model/account/CompositeUid;
    .end local v3    # "offlineMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    .end local v4    # "offlineSyncDto":Lcom/liquable/nemo/model/message/OfflineSyncDto;
    .end local v6    # "size":I
    .end local v7    # "toPurges":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    :catch_0
    move-exception v2

    .line 1556
    .local v2, "e":Lcom/liquable/nemo/client/AsyncException;
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/model/ChattingManager$OfflineBatchCalculator;->onAsyncException()V

    .line 1557
    iget-object v8, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processOfflineMesssage has AsyncException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 1558
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "robotMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "robotGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v2, 0x0

    .line 1584
    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "18e1df3b-d427-4ed2-885c-7f4510e853b2"

    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 1590
    sget-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->setSendState(Lcom/liquable/nemo/message/model/DomainMessage$SendState;)V

    .line 1596
    invoke-virtual {p1, v2}, Lcom/liquable/nemo/message/model/DomainMessage;->setReadMark(Z)V

    .line 1597
    invoke-direct {p0, p1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->processDomainMessage(Lcom/liquable/nemo/message/model/DomainMessage;Z)Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;

    .line 1598
    return-void
.end method

.method protected receiveAddChatGroupMemberMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;)V
    .locals 5
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1609
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/liquable/nemo/group/model/ChatGroupManager;->syncChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    .line 1610
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->getFriendUid()Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, "addedUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1618
    :goto_0
    return-void

    .line 1616
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->recoverFriends(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method receiveBecomeOneWayFriendMessage(Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;)V
    .locals 4
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 1622
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;->getSenderId()Ljava/lang/String;

    move-result-object v1

    .line 1623
    .local v1, "senderId":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 1624
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1625
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->addFriend(Ljava/lang/String;)V

    .line 1626
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->receive_one_way_friend:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    invoke-interface {v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->addFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)V

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1635
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastHasNewOneWayFriend()V

    goto :goto_0
.end method

.method receiveChannelUnsubscribeMessage(Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;)V
    .locals 3
    .param p1, "channelUnsubscribeMessage"    # Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;

    .prologue
    .line 1646
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;->getBroadcasterUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 1647
    .local v0, "channel":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_0

    .line 1648
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1649
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v1, v2, :cond_1

    .line 1655
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v1, p1, v0}, Lcom/liquable/nemo/android/NotifyManager;->notifyChannelUnsubscription(Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;Lcom/liquable/nemo/friend/model/Account;)V

    .line 1653
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->deleteFriendLocally(Ljava/lang/String;)V

    .line 1654
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendDeleted(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected receiveCreateChatGroupMessage(Lcom/liquable/nemo/message/model/CreateChatGroupMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/liquable/nemo/message/model/CreateChatGroupMessage;

    .prologue
    .line 1664
    return-void
.end method

.method public receiveDomainMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 7
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v6, 0x1

    .line 1679
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v4}, Lcom/liquable/nemo/message/model/DomainMessage;->markReceived(Ljava/util/Date;)V

    .line 1682
    const/4 v1, 0x0

    .line 1683
    .local v1, "alreadyFriend":Z
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 1684
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v4, v5, :cond_0

    .line 1685
    const/4 v1, 0x1

    .line 1688
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->processDomainMessage(Lcom/liquable/nemo/message/model/DomainMessage;Z)Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;

    move-result-object v3

    .line 1690
    .local v3, "result":Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    invoke-virtual {v3}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1727
    :cond_1
    :goto_0
    return-void

    .line 1694
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 1695
    invoke-virtual {v3}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->isNewVisibleMessage()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1696
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->currentChatGroupTopic:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->isChatGroupScrolledToBottom:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1697
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 1698
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isSmartNotificationOn()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1699
    :cond_3
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/android/NotifyManager;->playNotification(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 1701
    :cond_4
    invoke-virtual {p0, p1, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;I)V

    goto :goto_0

    .line 1702
    :cond_5
    instance-of v4, p1, Lcom/liquable/nemo/message/model/InviteFriendMessage;

    if-eqz v4, :cond_6

    .line 1703
    if-nez v1, :cond_1

    .line 1706
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/NotifyManager;->playNotification()V

    .line 1707
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1708
    .local v2, "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1709
    invoke-virtual {p0, p1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyFriendInviteOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;)V

    goto :goto_0

    .line 1710
    .end local v2    # "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    instance-of v4, p1, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;

    if-eqz v4, :cond_7

    .line 1711
    if-nez v1, :cond_1

    .line 1714
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/NotifyManager;->playNotification()V

    .line 1715
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1716
    .restart local v2    # "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1717
    invoke-virtual {p0, p1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyConfirmFriendOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;)V

    goto :goto_0

    .line 1718
    .end local v2    # "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    instance-of v4, p1, Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;

    if-eqz v4, :cond_1

    .line 1719
    if-nez v1, :cond_1

    sget-object v4, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 1722
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/NotifyManager;->playNotification()V

    .line 1723
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1724
    .restart local v2    # "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1725
    invoke-virtual {p0, p1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyConfirmFriendOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method protected receiveLeaveChatGroupMessage(Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 1740
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    .line 1741
    .local v0, "topic":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->syncChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    .line 1742
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    .line 1743
    return-void
.end method

.method protected receiveLikePictureMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/LikePictureMessage;)Z
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "domainMessage"    # Lcom/liquable/nemo/message/model/LikePictureMessage;

    .prologue
    .line 1747
    const/4 v0, 0x1

    return v0
.end method

.method receiveMediaMessage(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    const/4 v5, 0x1

    .line 1751
    instance-of v4, p1, Lcom/liquable/nemo/message/model/AudioMessage;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 1752
    check-cast v0, Lcom/liquable/nemo/message/model/AudioMessage;

    .line 1753
    .local v0, "audioMessage":Lcom/liquable/nemo/message/model/AudioMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AudioMessage;->isAlbumArtExists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1755
    invoke-virtual {v0, v5}, Lcom/liquable/nemo/message/model/AudioMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v4

    .line 1756
    invoke-virtual {v0, v5}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    .line 1754
    invoke-virtual {p0, v0, v4, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 1758
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v4

    invoke-interface {v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveAudioMessage()V

    .line 1791
    .end local v0    # "audioMessage":Lcom/liquable/nemo/message/model/AudioMessage;
    .end local p1    # "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    :cond_1
    :goto_0
    return-void

    .line 1759
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    :cond_2
    instance-of v4, p1, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 1760
    check-cast v2, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 1762
    .local v2, "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/PaintMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v4

    .line 1763
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    .line 1761
    invoke-virtual {p0, v2, v4, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 1765
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v4

    invoke-interface {v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receivePaintMessage()V

    goto :goto_0

    .line 1766
    .end local v2    # "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    :cond_3
    instance-of v4, p1, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v4, :cond_4

    .line 1767
    check-cast p1, Lcom/liquable/nemo/message/model/PictureMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->receivePictureMessage(Lcom/liquable/nemo/message/model/PictureMessage;)V

    goto :goto_0

    .line 1768
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    :cond_4
    instance-of v4, p1, Lcom/liquable/nemo/message/model/VideoMessage;

    if-eqz v4, :cond_6

    move-object v3, p1

    .line 1769
    check-cast v3, Lcom/liquable/nemo/message/model/VideoMessage;

    .line 1770
    .local v3, "videoMessage":Lcom/liquable/nemo/message/model/VideoMessage;
    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/VideoMessage;->isThumbnailExists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1772
    invoke-virtual {v3, v5}, Lcom/liquable/nemo/message/model/VideoMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v4

    .line 1773
    invoke-virtual {v3, v5}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    .line 1771
    invoke-virtual {p0, v3, v4, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 1776
    :cond_5
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v4

    invoke-interface {v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveVideoMessage()V

    goto :goto_0

    .line 1777
    .end local v3    # "videoMessage":Lcom/liquable/nemo/message/model/VideoMessage;
    :cond_6
    instance-of v4, p1, Lcom/liquable/nemo/message/model/LocationMessage;

    if-eqz v4, :cond_7

    move-object v1, p1

    .line 1778
    check-cast v1, Lcom/liquable/nemo/message/model/LocationMessage;

    .line 1780
    .local v1, "locationMessage":Lcom/liquable/nemo/message/model/LocationMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/LocationMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v4

    .line 1781
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    .line 1779
    invoke-virtual {p0, v1, v4, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 1783
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v4

    invoke-interface {v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveLocationMessage()V

    goto :goto_0

    .line 1784
    .end local v1    # "locationMessage":Lcom/liquable/nemo/message/model/LocationMessage;
    :cond_7
    instance-of v4, p1, Lcom/liquable/nemo/message/model/VoiceMessage;

    if-eqz v4, :cond_8

    .line 1785
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 1786
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v4

    invoke-interface {v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveVoiceMessage()V

    goto :goto_0

    .line 1787
    :cond_8
    instance-of v4, p1, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    if-eqz v4, :cond_1

    .line 1788
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0
.end method

.method receiveOfflineMessages(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1797
    .local p1, "dtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_1

    .line 1798
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 1874
    :cond_0
    :goto_0
    return-object v14

    .line 1801
    :cond_1
    const/4 v12, 0x0

    .line 1802
    .local v12, "lastMsg":Lcom/liquable/nemo/message/model/IDomainMessage;
    const/4 v11, 0x0

    .line 1803
    .local v11, "lastInviteFriendMsg":Lcom/liquable/nemo/message/model/IDomainMessage;
    const/4 v10, 0x0

    .line 1804
    .local v10, "lastConfirmFriendMsg":Lcom/liquable/nemo/message/model/IDomainMessage;
    const/4 v6, 0x0

    .line 1805
    .local v6, "count":I
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1806
    .local v9, "inviteFriendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1807
    .local v5, "confirmFriendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1809
    .local v14, "purgeableDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    const/4 v3, 0x1

    .line 1810
    .local v3, "allMute":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/model/message/OfflineMessageDto;

    .line 1811
    .local v7, "dto":Lcom/liquable/nemo/model/message/OfflineMessageDto;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Lcom/liquable/nemo/client/service/IChattingService;->convertDomainMessage(Lcom/liquable/nemo/model/message/OfflineMessageDto;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v13

    .line 1820
    .local v13, "offlineMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v13}, Lcom/liquable/nemo/message/model/DomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->markReceived(Ljava/util/Date;)V

    .line 1822
    const/4 v4, 0x0

    .line 1823
    .local v4, "alreadyFriend":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    .line 1825
    .local v2, "account":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v17

    sget-object v18, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1826
    const/4 v4, 0x1

    .line 1828
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->processDomainMessage(Lcom/liquable/nemo/message/model/DomainMessage;Z)Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;

    move-result-object v15

    .line 1829
    .local v15, "result":Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    invoke-virtual {v15}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->isSuccess()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    .line 1831
    invoke-virtual {v15}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->isNewVisibleMessage()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1832
    add-int/lit8 v6, v6, 0x1

    .line 1833
    move-object v12, v13

    .line 1834
    if-eqz v3, :cond_4

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v8

    .line 1836
    .local v8, "group":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/liquable/nemo/group/model/ChatGroup;->isMute()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1837
    const/4 v3, 0x0

    .line 1857
    .end local v8    # "group":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_4
    :goto_2
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1840
    :cond_5
    instance-of v0, v13, Lcom/liquable/nemo/message/model/InviteFriendMessage;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1841
    if-nez v4, :cond_4

    sget-object v17, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1842
    invoke-virtual {v13}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1843
    move-object v11, v13

    goto :goto_2

    .line 1845
    :cond_6
    instance-of v0, v13, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1846
    if-nez v4, :cond_4

    sget-object v17, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1847
    invoke-virtual {v13}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1848
    move-object v10, v13

    goto :goto_2

    .line 1850
    :cond_7
    instance-of v0, v13, Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1851
    if-nez v4, :cond_4

    sget-object v17, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1852
    invoke-virtual {v13}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1853
    move-object v10, v13

    goto :goto_2

    .line 1860
    .end local v2    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v4    # "alreadyFriend":Z
    .end local v7    # "dto":Lcom/liquable/nemo/model/message/OfflineMessageDto;
    .end local v13    # "offlineMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v15    # "result":Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    :cond_8
    if-eqz v6, :cond_9

    if-nez v3, :cond_9

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/liquable/nemo/android/NotifyManager;->playNotification()V

    .line 1862
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;I)V

    .line 1865
    :cond_9
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_a

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/liquable/nemo/android/NotifyManager;->playNotification()V

    .line 1867
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyFriendInviteOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;)V

    .line 1870
    :cond_a
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/liquable/nemo/android/NotifyManager;->playNotification()V

    .line 1872
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->notifyConfirmFriendOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method protected receiveReadedAckMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/ReadedAckMessage;)V
    .locals 10
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "readedAckMessage"    # Lcom/liquable/nemo/message/model/ReadedAckMessage;

    .prologue
    .line 1905
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/ReadedAckMessage;->getReadedMessageId()Ljava/lang/String;

    move-result-object v3

    .line 1906
    .local v3, "messageId":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/db/MessageDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v2

    .line 1907
    .local v2, "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    if-nez v2, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return-void

    .line 1911
    :cond_1
    invoke-interface {v2}, Lcom/liquable/nemo/message/model/IDomainMessage;->getReadCount()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 1915
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    new-instance v5, Lcom/liquable/nemo/message/model/ReadedAck;

    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/ReadedAckMessage;->getSenderId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/liquable/nemo/message/model/ReadedAck;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/db/MessageDao;->insertReadedAck(Lcom/liquable/nemo/message/model/ReadedAck;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1919
    instance-of v4, v2, Lcom/liquable/nemo/message/model/ISecret;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 1920
    check-cast v4, Lcom/liquable/nemo/message/model/ISecret;

    invoke-interface {v4}, Lcom/liquable/nemo/message/model/ISecret;->open()V

    .line 1921
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/db/MessageDao;->updateMessageContent(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 1924
    :cond_2
    invoke-interface {v2}, Lcom/liquable/nemo/message/model/IDomainMessage;->isSystemAck()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1925
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/db/MessageDao;->updateMessageSystemAcked(Ljava/lang/String;)V

    .line 1928
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2}, Lcom/liquable/nemo/message/model/IDomainMessage;->getReadCount()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1929
    .local v0, "finalCount":J
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v4, v3, v0, v1}, Lcom/liquable/nemo/db/MessageDao;->updateMessageReadedCount(Ljava/lang/String;J)V

    .line 1930
    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v5, v3}, Lcom/liquable/nemo/db/MessageDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastMessageUpdate(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0
.end method

.method protected receiveSecretMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/SecretTextMessage;)Z
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "secretMessage"    # Lcom/liquable/nemo/message/model/SecretTextMessage;

    .prologue
    .line 1955
    const/4 v0, 0x1

    return v0
.end method

.method protected receiveStickerMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/StickerMessage;)Z
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "textMessage"    # Lcom/liquable/nemo/message/model/StickerMessage;

    .prologue
    .line 1960
    const/4 v0, 0x1

    return v0
.end method

.method protected receiveTextMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/TextMessage;)Z
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "textMessage"    # Lcom/liquable/nemo/message/model/TextMessage;

    .prologue
    .line 1964
    const/4 v0, 0x1

    return v0
.end method

.method protected receiveUpdateGroupNameMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;)V
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "domainMessage"    # Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    .prologue
    .line 1977
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/group/model/ChatGroup;->setName(Ljava/lang/String;)V

    .line 1978
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateName(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 1979
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupTitleChanged(Ljava/lang/String;)V

    .line 1980
    return-void
.end method

.method public resendMessage(Ljava/lang/String;)Z
    .locals 9
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2005
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    .line 2006
    .local v1, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    if-nez v1, :cond_1

    .line 2044
    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_0
    :goto_0
    return v5

    .line 2010
    .restart local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_1
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->updateResendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2011
    instance-of v7, v1, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v7, :cond_2

    move-object v2, v1

    .line 2012
    check-cast v2, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 2013
    .local v2, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v2, v6}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 2014
    invoke-virtual {v7, v8}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v3

    .line 2015
    .local v3, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v2, v5}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 2016
    invoke-virtual {v7, v8}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 2017
    .local v0, "assetFile":Ljava/io/File;
    invoke-static {v3}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2020
    new-array v7, v6, [Lcom/liquable/nemo/message/model/PictureMessage;

    aput-object v2, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadPicturesThenSend(Ljava/util/List;)V

    .end local v0    # "assetFile":Ljava/io/File;
    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v2    # "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    .end local v3    # "thumbnailFile":Ljava/io/File;
    :goto_1
    move v5, v6

    .line 2044
    goto :goto_0

    .line 2021
    .restart local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_2
    instance-of v7, v1, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v7, :cond_3

    .line 2022
    new-array v7, v6, [Lcom/liquable/nemo/message/model/PaintMessage;

    check-cast v1, Lcom/liquable/nemo/message/model/PaintMessage;

    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    aput-object v1, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadPaintsThenSend(Ljava/util/List;)V

    goto :goto_1

    .line 2023
    .restart local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_3
    instance-of v7, v1, Lcom/liquable/nemo/message/model/VoiceMessage;

    if-eqz v7, :cond_4

    .line 2024
    new-array v7, v6, [Lcom/liquable/nemo/message/model/VoiceMessage;

    check-cast v1, Lcom/liquable/nemo/message/model/VoiceMessage;

    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    aput-object v1, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadVoicesThenSend(Ljava/util/List;)V

    goto :goto_1

    .line 2025
    .restart local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_4
    instance-of v7, v1, Lcom/liquable/nemo/message/model/AudioMessage;

    if-eqz v7, :cond_5

    .line 2026
    new-array v7, v6, [Lcom/liquable/nemo/message/model/AudioMessage;

    check-cast v1, Lcom/liquable/nemo/message/model/AudioMessage;

    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    aput-object v1, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadAudiosThenSend(Ljava/util/List;)V

    goto :goto_1

    .line 2027
    .restart local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_5
    instance-of v7, v1, Lcom/liquable/nemo/message/model/VideoMessage;

    if-eqz v7, :cond_6

    move-object v4, v1

    .line 2028
    check-cast v4, Lcom/liquable/nemo/message/model/VideoMessage;

    .line 2029
    .local v4, "videoMessage":Lcom/liquable/nemo/message/model/VideoMessage;
    invoke-virtual {v4, v6}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 2030
    invoke-virtual {v7, v8}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v3

    .line 2031
    .restart local v3    # "thumbnailFile":Ljava/io/File;
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 2032
    invoke-virtual {v7, v8}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 2033
    .restart local v0    # "assetFile":Ljava/io/File;
    invoke-static {v3}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2036
    new-array v7, v6, [Lcom/liquable/nemo/message/model/VideoMessage;

    aput-object v4, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadVideosThenSend(Ljava/util/List;)V

    goto :goto_1

    .line 2037
    .end local v0    # "assetFile":Ljava/io/File;
    .end local v3    # "thumbnailFile":Ljava/io/File;
    .end local v4    # "videoMessage":Lcom/liquable/nemo/message/model/VideoMessage;
    :cond_6
    instance-of v7, v1, Lcom/liquable/nemo/message/model/LocationMessage;

    if-eqz v7, :cond_7

    .line 2038
    new-array v7, v6, [Lcom/liquable/nemo/message/model/LocationMessage;

    check-cast v1, Lcom/liquable/nemo/message/model/LocationMessage;

    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    aput-object v1, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->startUploadLocationThumbnailThenSend(Ljava/util/List;)V

    goto :goto_1

    .line 2039
    .restart local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_7
    instance-of v7, v1, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    if-eqz v7, :cond_8

    .line 2040
    new-array v7, v6, [Lcom/liquable/nemo/message/model/SecretPictureMessage;

    check-cast v1, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    aput-object v1, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadSecretPicturesThenSend(Ljava/util/List;)V

    goto/16 :goto_1

    .line 2042
    .restart local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_8
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v5, v1}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto/16 :goto_1
.end method

.method public saveCallLogMessage(Ljava/lang/String;Ljava/lang/String;J)Lcom/liquable/nemo/message/model/CallLogMessage;
    .locals 7
    .param p1, "dialerUid"    # Ljava/lang/String;
    .param p2, "receiverUid"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .prologue
    .line 2082
    invoke-static {p3, p4}, Lcom/liquable/nemo/message/model/CallLogMessage;->createBySender(J)Lcom/liquable/nemo/message/model/CallLogMessage;

    move-result-object v0

    .line 2084
    .local v0, "callLog":Lcom/liquable/nemo/message/model/CallLogMessage;
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2085
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v5, p2}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v3

    .line 2086
    .local v3, "receiver":Lcom/liquable/nemo/friend/model/Account;
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v5, v3}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 2087
    .local v1, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/message/model/CallLogMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2090
    sget-object v5, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/message/model/CallLogMessage;->setSendState(Lcom/liquable/nemo/message/model/DomainMessage$SendState;)V

    .line 2103
    .end local v3    # "receiver":Lcom/liquable/nemo/friend/model/Account;
    :goto_0
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v5, v0}, Lcom/liquable/nemo/db/MessageDao;->insert(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    move-result v4

    .line 2104
    .local v4, "success":Z
    if-eqz v4, :cond_0

    .line 2105
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/CallLogMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/group/model/ChatGroup;->setLastUpdateTime(Ljava/util/Date;)V

    .line 2106
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v5, v1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateLastUpdateTime(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 2107
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNewMessage(Lcom/liquable/nemo/message/model/IDomainMessage;Z)V

    .line 2112
    :cond_0
    return-object v0

    .line 2094
    .end local v1    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v4    # "success":Z
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v5, p1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    .line 2095
    .local v2, "dialer":Lcom/liquable/nemo/friend/model/Account;
    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v5, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 2097
    .restart local v1    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/message/model/CallLogMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2100
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/message/model/CallLogMessage;->markReceived(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public savePaint(Landroid/content/Context;Lcom/liquable/nemo/message/model/PaintMessage;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/PaintMessage;

    .prologue
    const/4 v8, 0x0

    .line 2116
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v9

    iget-object v10, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v9, v10}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 2117
    .local v2, "mediaFile":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return v8

    .line 2120
    :cond_1
    const v9, -0x121213

    invoke-static {v2, v9}, Lcom/liquable/nemo/util/ImageUtils;->createBitmapWithBackground(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2123
    .local v4, "paintWithBgBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2124
    .local v5, "picUid":Ljava/lang/String;
    const-string/jumbo v7, "png"

    .line 2125
    .local v7, "suffix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/liquable/nemo/message/model/PictureMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 2127
    .local v3, "newPictureLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v9, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, v9}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v6

    .line 2128
    .local v6, "resultFile":Ljava/io/File;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v9, v4, v6}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    .line 2131
    .local v0, "compressBitmapResult":Z
    if-eqz v0, :cond_0

    .line 2136
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v1, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2137
    .local v1, "intent":Landroid/content/Intent;
    sget-object v8, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->SCAN_MEDIA:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-virtual {v8}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2138
    const-string/jumbo v8, "from"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2139
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2141
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public savePictureImageAsJpeg(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "resultFile"    # Ljava/io/File;

    .prologue
    .line 2146
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->fileHasContent(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2147
    const/4 v1, 0x0

    .line 2153
    :goto_0
    return v1

    .line 2149
    :cond_0
    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/liquable/nemo/util/ImageUtils;->createBitmapWithBackground(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2151
    .local v0, "paintWithBgBitmap":Landroid/graphics/Bitmap;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, v0, p2}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 2153
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public saveThumbnailForBigPictureMessage(Landroid/content/Context;Lcom/liquable/nemo/message/model/PictureMessage;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pictureMessage"    # Lcom/liquable/nemo/message/model/PictureMessage;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2162
    invoke-virtual {p2, v9}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    .line 2164
    .local v5, "thumbKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2195
    :goto_0
    return-void

    .line 2169
    :cond_0
    invoke-virtual {p2, v8}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 2170
    .local v0, "bigFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2171
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v7, "could not save thumbnail for big picture message because big file not exist"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 2175
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 2178
    .local v1, "bigFileUri":Landroid/net/Uri;
    :try_start_0
    invoke-static {p1, v1}, Lcom/liquable/nemo/util/ImageUtils;->getCompressFormat(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2184
    .local v2, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {p1, v1, v9, v8}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v3

    .line 2189
    .local v3, "decodedBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2190
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v7, "could not save thumbnail for big picture message because convert bitmap failed"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 2179
    .end local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    .end local v3    # "decodedBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :catch_0
    move-exception v4

    .line 2180
    .local v4, "e":Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v7, "could not save thumbnail for big picture message"

    invoke-virtual {v6, v7, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2194
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v3    # "decodedBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :cond_2
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v2, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->writePictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    goto :goto_0
.end method

.method public sendAskLocationMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 2245
    invoke-static {}, Lcom/liquable/nemo/message/model/AskLocationMessage;->createBySender()Lcom/liquable/nemo/message/model/AskLocationMessage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAskMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/AskMessage;)V

    .line 2246
    return-void
.end method

.method public sendAskPictureMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 2256
    invoke-static {}, Lcom/liquable/nemo/message/model/AskPictureMessage;->createBySender()Lcom/liquable/nemo/message/model/AskPictureMessage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAskMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/AskMessage;)V

    .line 2257
    return-void
.end method

.method public sendAudioMessage(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 6
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 2268
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 2269
    .local v4, "filename":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/group/model/ChatGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2271
    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    .line 2269
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAudioMessages(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public sendAudioMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/android/provider/AudioInfo;Landroid/content/Context;)Z
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "mediaInfo"    # Lcom/liquable/nemo/android/provider/AudioInfo;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 2262
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/group/model/ChatGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAudioMessages(Ljava/util/List;Lcom/liquable/nemo/android/provider/AudioInfo;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public sendAudioMessages(Ljava/util/List;Landroid/net/Uri;)Z
    .locals 8
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v0, 0x0

    .line 2296
    invoke-direct {p0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->redressFileUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2297
    .local v2, "fileUri":Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 2313
    :goto_0
    return v0

    .line 2301
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 2304
    .local v6, "fileNameWithSuffix":Ljava/lang/String;
    const-string/jumbo v1, "."

    invoke-virtual {v6, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 2305
    .local v7, "lastIndexOfDot":I
    const/4 v1, -0x1

    if-eq v7, v1, :cond_1

    .line 2306
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2307
    .local v3, "ext":Ljava/lang/String;
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2313
    .local v4, "title":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAudioMessages(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0

    .line 2309
    .end local v3    # "ext":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, ""

    .line 2310
    .restart local v3    # "ext":Ljava/lang/String;
    move-object v4, v6

    .restart local v4    # "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public sendAudioMessages(Ljava/util/List;Lcom/liquable/nemo/android/provider/AudioInfo;Landroid/content/Context;)Z
    .locals 6
    .param p2, "mediaInfo"    # Lcom/liquable/nemo/android/provider/AudioInfo;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/android/provider/AudioInfo;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2281
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-virtual {p2}, Lcom/liquable/nemo/android/provider/AudioInfo;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2282
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/liquable/nemo/android/provider/AudioInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2287
    .local v3, "ext":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/liquable/nemo/android/provider/AudioInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 2289
    invoke-virtual {p2}, Lcom/liquable/nemo/android/provider/AudioInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 2290
    invoke-virtual {p2, p3}, Lcom/liquable/nemo/android/provider/AudioInfo;->getAlbumArtUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 2286
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAudioMessages(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0

    .line 2284
    .end local v3    # "ext":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/liquable/nemo/android/provider/AudioInfo;->getSuffix()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ext":Ljava/lang/String;
    goto :goto_0
.end method

.method public sendChatStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "chatStatus"    # Lcom/liquable/nemo/status/model/IChatStatus;

    .prologue
    .line 2375
    if-nez p1, :cond_0

    .line 2379
    :goto_0
    return-void

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v0, p1, p2}, Lcom/liquable/nemo/client/service/IChattingService;->sendStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V

    goto :goto_0
.end method

.method public sendCustomStickerMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 2383
    invoke-static {p2}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->createBySender(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/message/model/CustomStickerMessage;

    move-result-object v1

    .line 2384
    .local v1, "message":Lcom/liquable/nemo/message/model/CustomStickerMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2385
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 2386
    .local v0, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, v1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 2387
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v2, v1}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2388
    return-void
.end method

.method public sendLikePictureMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 2391
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 2392
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    .line 2391
    invoke-static {v1, v2}, Lcom/liquable/nemo/message/model/LikePictureMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/LikePictureMessage;

    move-result-object v0

    .line 2393
    .local v0, "likePictureMessage":Lcom/liquable/nemo/message/model/LikePictureMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 2394
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 2393
    invoke-static {v1, v2}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/LikePictureMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2396
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 2397
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 2396
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 2398
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2399
    return-void
.end method

.method public sendLocationMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/map/SharableLocation;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "location"    # Lcom/liquable/nemo/map/SharableLocation;

    .prologue
    .line 2402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2403
    .local v0, "chatGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2404
    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendLocationMessages(Ljava/util/List;Lcom/liquable/nemo/map/SharableLocation;)V

    .line 2405
    return-void
.end method

.method public sendLocationMessages(Ljava/util/List;Lcom/liquable/nemo/map/SharableLocation;)V
    .locals 4
    .param p2, "location"    # Lcom/liquable/nemo/map/SharableLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/map/SharableLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2409
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 2410
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2409
    invoke-static {v2}, Lcom/liquable/nemo/message/model/LocationMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 2412
    .local v1, "thumbLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-direct {p0, p1, p2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->createLocationMessage(Ljava/util/List;Lcom/liquable/nemo/map/SharableLocation;Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/util/List;

    move-result-object v0

    .line 2415
    .local v0, "locationMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/LocationMessage;>;"
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->startUploadLocationThumbnailThenSend(Ljava/util/List;)V

    .line 2416
    return-void
.end method

.method public sendMissedCallMessage(Ljava/lang/String;J)V
    .locals 5
    .param p1, "receiverUid"    # Ljava/lang/String;
    .param p2, "callTime"    # J

    .prologue
    .line 2419
    invoke-static {p2, p3}, Lcom/liquable/nemo/message/model/MissedCallMessage;->createBySender(J)Lcom/liquable/nemo/message/model/MissedCallMessage;

    move-result-object v1

    .line 2421
    .local v1, "missedCall":Lcom/liquable/nemo/message/model/MissedCallMessage;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    .line 2422
    .local v2, "receiver":Lcom/liquable/nemo/friend/model/Account;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 2424
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/liquable/nemo/message/model/MissedCallMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2425
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v3, v1}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2427
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    invoke-interface {v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->voipMissedCall()V

    .line 2430
    return-void
.end method

.method public sendPaintAsSecretPictureMessages(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p3, "rawBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    const/4 v0, 0x0

    .line 2436
    const v1, -0x121213

    invoke-static {p3, v1}, Lcom/liquable/nemo/util/ImageUtils;->createBitmapWithBackground(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2438
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile()Ljava/io/File;

    move-result-object v8

    .line 2439
    .local v8, "tempFile":Ljava/io/File;
    invoke-static {p4, v6, v8}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v7

    .line 2440
    .local v7, "success":Z
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2441
    if-nez v7, :cond_0

    .line 2442
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "save temp paint file failed"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 2449
    :goto_0
    return v0

    .line 2447
    :cond_0
    :try_start_0
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendSecretPictureMessages(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;Landroid/net/Uri;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2449
    invoke-static {v8}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    throw v0
.end method

.method public sendPaintMessages(Ljava/util/List;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 7
    .param p2, "picBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2456
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2457
    .local v2, "picUid":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 2458
    .local v3, "suffix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/message/model/PaintMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 2459
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-direct {p0, p2, p3, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->writePaintFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v4

    .line 2462
    .local v4, "writePaintFileResult":Z
    if-nez v4, :cond_0

    .line 2463
    const/4 v5, 0x0

    .line 2467
    :goto_0
    return v5

    .line 2465
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->createPaintMessages(Ljava/util/List;Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/util/List;

    move-result-object v1

    .line 2466
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PaintMessage;>;"
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadPaintsThenSend(Ljava/util/List;)V

    .line 2467
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public sendPictureMessages(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)Z
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "fileUri"    # Landroid/net/Uri;
    .param p4, "rotateDegree"    # I
    .param p5, "rawText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2483
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/16 v3, 0x1f4

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2487
    .local v11, "text":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/ImageUtils;->getPreferedPictureCompressFormat(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2491
    .local v14, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v14, v3, :cond_0

    const-string/jumbo v19, ".png"

    .line 2492
    .local v19, "suffix":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2493
    .local v18, "picUid":Ljava/lang/String;
    const/4 v7, -0x1

    .line 2494
    .local v7, "thumbnailWidth":I
    const/4 v8, -0x1

    .line 2495
    .local v8, "thumbnailHeight":I
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v3, v2}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v15

    .line 2500
    .local v15, "decodedBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v15}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2501
    const/4 v3, 0x0

    .line 2547
    .end local v7    # "thumbnailWidth":I
    .end local v8    # "thumbnailHeight":I
    .end local v14    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    .end local v15    # "decodedBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    .end local v18    # "picUid":Ljava/lang/String;
    .end local v19    # "suffix":Ljava/lang/String;
    :goto_1
    return v3

    .line 2488
    :catch_0
    move-exception v16

    .line 2489
    .local v16, "e1":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    goto :goto_1

    .line 2491
    .end local v16    # "e1":Ljava/io/FileNotFoundException;
    .restart local v14    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :cond_0
    const-string/jumbo v19, ".jpg"

    goto :goto_0

    .line 2504
    .restart local v7    # "thumbnailWidth":I
    .restart local v8    # "thumbnailHeight":I
    .restart local v15    # "decodedBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    .restart local v18    # "picUid":Ljava/lang/String;
    .restart local v19    # "suffix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v15}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2505
    invoke-virtual {v15}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2506
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "_s"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liquable/nemo/message/model/PictureMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v20

    .line 2508
    .local v20, "thumbKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {v15}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v14, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->writePictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v22

    .line 2512
    .local v22, "writeThumbResult":Z
    if-nez v22, :cond_2

    .line 2513
    const/4 v3, 0x0

    goto :goto_1

    .line 2516
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v3, v2}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v12

    .line 2521
    .local v12, "assetBitmapOptional":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v12}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2522
    const/4 v3, 0x0

    goto :goto_1

    .line 2525
    :cond_3
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liquable/nemo/message/model/PictureMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v13

    .line 2526
    .local v13, "assetKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {v12}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v13}, Lcom/liquable/nemo/chat/model/ChattingManager;->writePictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v21

    .line 2530
    .local v21, "writeAssetResult":Z
    if-nez v21, :cond_4

    .line 2531
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2533
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v5

    .line 2534
    .local v5, "thumbFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, v13}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v6

    .line 2541
    .local v6, "assetFile":Ljava/io/File;
    invoke-virtual {v12}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 2542
    invoke-virtual {v12}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 2536
    invoke-direct/range {v3 .. v11}, Lcom/liquable/nemo/chat/model/ChattingManager;->createPictureMessages(Ljava/util/List;Ljava/io/File;Ljava/io/File;IIIILjava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 2545
    .local v17, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PictureMessage;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastSharingPictureMedia(Landroid/net/Uri;)V

    .line 2546
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadPicturesThenSend(Ljava/util/List;)V

    .line 2547
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method public sendSecretPictureMessages(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;Landroid/net/Uri;ILjava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p3, "rawFileUri"    # Landroid/net/Uri;
    .param p4, "rotateDegree"    # I
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 2555
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/group/model/ChatGroup;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2556
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 2555
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendSecretPictureMessages(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendSecretPictureMessages(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;ILjava/lang/String;)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "rawFileUri"    # Landroid/net/Uri;
    .param p4, "rotateDegree"    # I
    .param p5, "rawText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2567
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/16 v3, 0x1f4

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 2571
    .local v16, "text":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/ImageUtils;->getPreferedPictureCompressFormat(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2577
    .local v6, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/ImageUtils;->decodeToSecretBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2578
    .local v7, "rawBitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 2579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "open secret bitmap failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 2580
    const/4 v3, 0x0

    .line 2609
    .end local v6    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    .end local v7    # "rawBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return v3

    .line 2572
    :catch_0
    move-exception v10

    .line 2573
    .local v10, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file not exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 2574
    const/4 v3, 0x0

    goto :goto_0

    .line 2583
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v7    # "rawBitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v6, v3, :cond_1

    const-string/jumbo v15, "-png-secret"

    .line 2584
    .local v15, "suffix":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2585
    .local v13, "picUid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2586
    .local v11, "largeFileName":Ljava/lang/String;
    invoke-static {v11}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->createTemporaryLocalThumbnailKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v8

    .line 2588
    .local v8, "thumbKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-static {v11}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v9

    .local v9, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    .line 2590
    invoke-direct/range {v3 .. v9}, Lcom/liquable/nemo/chat/model/ChattingManager;->compressAndEncryptFile(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v14

    .line 2597
    .local v14, "result":Z
    if-nez v14, :cond_2

    .line 2598
    const/4 v3, 0x0

    goto :goto_0

    .line 2583
    .end local v8    # "thumbKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v9    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v11    # "largeFileName":Ljava/lang/String;
    .end local v13    # "picUid":Ljava/lang/String;
    .end local v14    # "result":Z
    .end local v15    # "suffix":Ljava/lang/String;
    :cond_1
    const-string/jumbo v15, "-jpg-secret"

    goto :goto_1

    .line 2601
    .restart local v8    # "thumbKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .restart local v9    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .restart local v11    # "largeFileName":Ljava/lang/String;
    .restart local v13    # "picUid":Ljava/lang/String;
    .restart local v14    # "result":Z
    .restart local v15    # "suffix":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v9}, Lcom/liquable/nemo/chat/model/ChattingManager;->createSecretPictureMessages(Ljava/util/List;Ljava/lang/String;Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/util/List;

    move-result-object v12

    .line 2604
    .local v12, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/SecretPictureMessage;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadSecretPicturesThenSend(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2609
    const/4 v3, 0x1

    goto :goto_0

    .line 2605
    .end local v12    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/SecretPictureMessage;>;"
    :catch_1
    move-exception v10

    .line 2606
    .local v10, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/chat/model/ChattingManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "encrypt text failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v10}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2607
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public sendSecretTextMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/SecretTextMessage;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "secretMessage"    # Lcom/liquable/nemo/message/model/SecretTextMessage;

    .prologue
    .line 2614
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 2615
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 2614
    invoke-static {v1, v2}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/liquable/nemo/message/model/SecretTextMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2616
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 2617
    .local v0, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, p2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 2618
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v1, p2}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2619
    return-void
.end method

.method public sendStickerMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 2622
    invoke-static {p2}, Lcom/liquable/nemo/message/model/StickerMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/StickerMessage;

    move-result-object v0

    .line 2623
    .local v0, "animMessage":Lcom/liquable/nemo/message/model/StickerMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/message/model/StickerMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2624
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 2625
    .local v1, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 2626
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v2, v0}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2628
    return-void
.end method

.method public sendTextMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2631
    invoke-static {p2}, Lcom/liquable/nemo/message/model/TextMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/TextMessage;

    move-result-object v1

    .line 2632
    .local v1, "textMessage":Lcom/liquable/nemo/message/model/TextMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/model/TextMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2633
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 2634
    .local v0, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, v1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 2635
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v2, v1}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2636
    return-void
.end method

.method public sendVideoMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/android/provider/VideoInfo;)Z
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "videoInfo"    # Lcom/liquable/nemo/android/provider/VideoInfo;

    .prologue
    .line 2639
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/group/model/ChatGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendVideoMessages(Ljava/util/List;Lcom/liquable/nemo/android/provider/VideoInfo;)Z

    move-result v0

    return v0
.end method

.method public sendVideoMessages(Ljava/util/List;Landroid/net/Uri;)Z
    .locals 5
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2644
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-direct {p0, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->redressFileUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2645
    .local v2, "fileUri":Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 2646
    const/4 v4, 0x0

    .line 2657
    :goto_0
    return v4

    .line 2648
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 2649
    .local v1, "fileNameWithSuffix":Ljava/lang/String;
    const-string/jumbo v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 2651
    .local v3, "lastIndexOfDot":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2652
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2657
    .local v0, "ext":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1, v2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendVideoMessages(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 2654
    .end local v0    # "ext":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    .restart local v0    # "ext":Ljava/lang/String;
    goto :goto_1
.end method

.method public sendVideoMessages(Ljava/util/List;Lcom/liquable/nemo/android/provider/VideoInfo;)Z
    .locals 3
    .param p2, "videoInfo"    # Lcom/liquable/nemo/android/provider/VideoInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/android/provider/VideoInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2708
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {p2}, Lcom/liquable/nemo/android/provider/VideoInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2710
    .local v0, "ext":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/liquable/nemo/android/provider/VideoInfo;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendVideoMessages(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public sendVoiceMessages(Ljava/util/List;Ljava/io/File;J)Ljava/lang/Boolean;
    .locals 5
    .param p2, "tempFile"    # Ljava/io/File;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/io/File;",
            "J)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 2716
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".caf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/message/model/VoiceMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 2719
    .local v0, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-direct {p0, p2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->writeVoiceFile(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v2

    .line 2720
    .local v2, "writeVoiceFileResult":Z
    if-nez v2, :cond_0

    .line 2721
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2725
    :goto_0
    return-object v3

    .line 2723
    :cond_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/liquable/nemo/chat/model/ChattingManager;->createVoiceMessages(Ljava/util/List;Lcom/liquable/nemo/storage/LocalKeyPath;J)Ljava/util/List;

    move-result-object v1

    .line 2724
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/VoiceMessage;>;"
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->uploadVoicesThenSend(Ljava/util/List;)V

    .line 2725
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public sendYoutubeMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 2732
    invoke-static {p2, p3, p4}, Lcom/liquable/nemo/message/model/YoutubeMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/YoutubeMessage;

    move-result-object v1

    .line 2733
    .local v1, "message":Lcom/liquable/nemo/message/model/YoutubeMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/model/YoutubeMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 2734
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 2735
    .local v0, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, v1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 2736
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v2, v1}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2737
    return-void
.end method

.method public sendYoutubeMessage(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2743
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 2744
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendYoutubeMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2746
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_0
    return-void
.end method

.method public setCurrentChatGroupTopic(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentChatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->currentChatGroupTopic:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2750
    return-void
.end method

.method public setIsChatGroupScrolledToBottom(Z)V
    .locals 2
    .param p1, "isChatGroupScrolledToBottom"    # Z

    .prologue
    .line 2753
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->isChatGroupScrolledToBottom:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 2755
    return-void

    .line 2753
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public truncateDeletedMessageIds()V
    .locals 1

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->truncateExpired()V

    .line 2788
    return-void
.end method

.method public updateReceiveSendAck(Ljava/lang/String;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 2791
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/MessageDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    .line 2792
    .local v0, "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    if-nez v0, :cond_0

    .line 2801
    :goto_0
    return-void

    .line 2795
    :cond_0
    instance-of v1, v0, Lcom/liquable/nemo/message/model/ISecret;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 2796
    check-cast v1, Lcom/liquable/nemo/message/model/ISecret;

    invoke-interface {v1}, Lcom/liquable/nemo/message/model/ISecret;->open()V

    .line 2797
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/db/MessageDao;->updateMessageContent(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 2799
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/MessageDao;->updateMessageSystemAcked(Ljava/lang/String;)V

    .line 2800
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastMessageUpdate(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0
.end method

.method public updateReceiveSendError(Ljava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 2804
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/MessageDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    .line 2805
    .local v0, "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    if-nez v0, :cond_0

    .line 2810
    :goto_0
    return-void

    .line 2808
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-interface {v0}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/MessageDao;->updateMessageSendFailed(Ljava/lang/String;)V

    .line 2809
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastMessageUpdate(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0
.end method

.method public updateSecretMessage(Lcom/liquable/nemo/message/model/ISecret;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/ISecret;

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/MessageDao;->updateMessageContent(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 2826
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastMessageUpdate(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 2827
    return-void
.end method
