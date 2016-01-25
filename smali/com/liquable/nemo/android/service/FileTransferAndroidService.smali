.class public Lcom/liquable/nemo/android/service/FileTransferAndroidService;
.super Landroid/app/IntentService;
.source "FileTransferAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;,
        Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;,
        Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;,
        Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;,
        Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;,
        Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;,
        Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;
    }
.end annotation


# static fields
.field public static final BUNDLE_PROGRESS_INT:Ljava/lang/String; = "PROGRESS"

.field public static final CACHE_SECONDS:Ljava/lang/String; = "cache_seconds"

.field public static final CALLBACK:Ljava/lang/String; = "callback"

.field public static final CODE_COMPLETE:I = 0x1

.field public static final CODE_DUPLICATE:I = 0x4

.field public static final CODE_FAILED:I = 0x3

.field public static final CODE_TRANSMITTING:I = 0x2

.field private static final DOWNLOAD_THROTTLER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final TO:Ljava/lang/String; = "to"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private final extraFileTransferTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileTransferInfoImpl:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;

.field private handler:Landroid/os/Handler;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final s3Service:Lcom/liquable/nemo/storage/aws/NemoS3Service;

.field private final transferTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            "Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->DOWNLOAD_THROTTLER:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 282
    const-string/jumbo v0, "FileTransferAndroidService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->getInstance()Lcom/liquable/nemo/storage/aws/NemoS3Service;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->s3Service:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    .line 266
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->binder:Landroid/os/IBinder;

    .line 268
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->fileTransferInfoImpl:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    .line 275
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->extraFileTransferTasks:Ljava/util/Set;

    .line 279
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/lang/String;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/ResultReceiver;
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endExtraTransferTask(Ljava/lang/String;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/android/service/FileTransferAndroidService;DLandroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;
    .param p1, "x1"    # D
    .param p3, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->sendProgressMessage(DLandroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/util/EnumSet;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;
    .param p1, "x1"    # Ljava/util/EnumSet;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->listTargetFilePath(Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;
    .param p1, "x1"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/ResultReceiver;
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->triggerMediaScannerIfRequired(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->fileTransferInfoImpl:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;

    return-object v0
.end method

.method private addExtraTransferTask(Ljava/lang/String;Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Landroid/os/ResultReceiver;Lcom/liquable/nemo/android/service/ExtraFileType;)V
    .locals 2
    .param p1, "remoteFilePath"    # Ljava/lang/String;
    .param p2, "fileTransferAction"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .param p4, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->extraFileTransferTasks:Ljava/util/Set;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->extraFileTransferTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    monitor-exit v1

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->extraFileTransferTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "fileTransferAction"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    new-instance v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    invoke-direct {v2, p2, p3}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    monitor-exit v1

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cancel(Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 6
    .param p1, "action"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 307
    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    monitor-enter v2

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    .line 309
    .local v0, "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    if-nez v0, :cond_0

    .line 310
    monitor-exit v2

    .line 338
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    monitor-exit v2

    goto :goto_0

    .line 337
    .end local v0    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 318
    .restart local v0    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->isQueued()Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$2;->$SwitchMap$com$liquable$nemo$android$service$FileTransferAndroidService$FileTransferAction:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 331
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 335
    :catchall_1
    move-exception v1

    const/4 v3, 0x3

    :try_start_3
    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, p2, v3, v4, v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    :pswitch_0
    :try_start_4
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->s3Service:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->abortDownload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 335
    :cond_2
    :goto_1
    const/4 v1, 0x3

    :try_start_5
    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p2, v1, v3, v4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 337
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 328
    :pswitch_1
    :try_start_6
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->s3Service:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->abortUpload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkWithinOneMinute(Ljava/lang/String;)Z
    .locals 7
    .param p1, "remoteKeyPath"    # Ljava/lang/String;

    .prologue
    .line 341
    sget-object v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->DOWNLOAD_THROTTLER:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 343
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v2, v3, v5

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 344
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 348
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    sget-object v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->DOWNLOAD_THROTTLER:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private delete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Landroid/os/ResultReceiver;Lcom/liquable/aws/AwsSessionCredentialsDto;)V
    .locals 8
    .param p1, "to"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "credentialsDto"    # Lcom/liquable/aws/AwsSessionCredentialsDto;

    .prologue
    .line 355
    :try_start_0
    iget-object v7, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->s3Service:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    new-instance v0, Lcom/amazon/auth/NemoBasicSessionCredentials;

    invoke-virtual {p3}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {p3}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-virtual {p3}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-virtual {p3}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getExpiration()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/auth/NemoBasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 355
    invoke-virtual {v7, p1, v0}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->delete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 359
    const/4 v0, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v6

    .line 361
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "delete keypath failed"

    invoke-virtual {v0, v1, v6}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    const/4 v0, 0x3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private download(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Landroid/os/ResultReceiver;Lcom/liquable/aws/AwsSessionCredentialsDto;)V
    .locals 9
    .param p1, "from"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "to"    # Ljava/io/File;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .param p4, "credentialsDto"    # Lcom/liquable/aws/AwsSessionCredentialsDto;

    .prologue
    const/4 v5, 0x0

    .line 371
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    .line 373
    .local v7, "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    if-nez v7, :cond_0

    .line 375
    monitor-exit v1

    .line 395
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {v7}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p3, v2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 381
    monitor-exit v1

    goto :goto_0

    .line 386
    .end local v7    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 385
    .restart local v7    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->running()V

    .line 386
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    iget-object v8, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->s3Service:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Landroid/os/ResultReceiver;Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;)V

    new-instance v1, Lcom/amazon/auth/NemoBasicSessionCredentials;

    .line 391
    invoke-virtual {p4}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {p4}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-virtual {p4}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {p4}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getExpiration()J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/auth/NemoBasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 388
    invoke-virtual {v8, p1, p2, v0, v1}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->download(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;)V

    goto :goto_0
.end method

.method private downloadExtraFile(Ljava/lang/String;Ljava/io/File;Landroid/os/ResultReceiver;Lcom/liquable/aws/AwsSessionCredentialsDto;)V
    .locals 9
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/io/File;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .param p4, "credentialsDto"    # Lcom/liquable/aws/AwsSessionCredentialsDto;

    .prologue
    .line 401
    iget-object v6, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->s3Service:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    invoke-static {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v7

    new-instance v8, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;

    const/4 v0, 0x0

    invoke-direct {v8, p0, p1, p3, v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;)V

    new-instance v0, Lcom/amazon/auth/NemoBasicSessionCredentials;

    .line 404
    invoke-virtual {p4}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {p4}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-virtual {p4}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {p4}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getExpiration()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/auth/NemoBasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 401
    invoke-virtual {v6, v7, p2, v8, v0}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->download(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 408
    return-void
.end method

.method private endExtraTransferTask(Ljava/lang/String;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 414
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->extraFileTransferTasks:Ljava/util/Set;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->extraFileTransferTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 416
    if-eqz p4, :cond_0

    .end local p4    # "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p3, p2, p4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 417
    monitor-exit v1

    .line 418
    return-void

    .line 416
    .restart local p4    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "bundle":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private endTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "resultCode"    # I
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 424
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    if-eqz p4, :cond_0

    .end local p4    # "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p3, p2, p4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 427
    monitor-exit v1

    .line 428
    return-void

    .line 426
    .restart local p4    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "bundle":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    .locals 2
    .param p1, "keyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 431
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    monitor-exit v1

    return-object v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAwsSessionCredentials()Lcom/liquable/aws/AwsSessionCredentialsDto;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 437
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getAwsSessionCredentials()Lcom/liquable/aws/AwsSessionCredentialsDto;

    move-result-object v0

    .line 438
    .local v0, "credentials":Lcom/liquable/aws/AwsSessionCredentialsDto;
    if-nez v0, :cond_1

    .line 439
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isAccountExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 445
    :goto_0
    return-object v1

    .line 442
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->awsSecurityService:Lcom/liquable/nemo/client/service/AwsSecurityService;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/service/AwsSecurityService;->getSessionCredentials(Ljava/lang/String;)Lcom/liquable/aws/AwsSessionCredentialsDto;

    move-result-object v0

    .line 443
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Pref;->saveAwsSessionCredentials(Lcom/liquable/aws/AwsSessionCredentialsDto;)V

    :cond_1
    move-object v1, v0

    .line 445
    goto :goto_0
.end method

.method private listTargetFilePath(Ljava/util/EnumSet;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "actions":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;>;"
    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    monitor-enter v3

    .line 450
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 452
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->getAction()Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;>;"
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 456
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method private sendProgressMessage(DLandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "percentage"    # D
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 615
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 616
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "PROGRESS"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    const/4 v1, 0x2

    invoke-virtual {p3, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 618
    return-void
.end method

.method private triggerMediaScannerIfRequired(Ljava/io/File;)V
    .locals 2
    .param p1, "localFile"    # Ljava/io/File;

    .prologue
    .line 621
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/storage/NemoFileService;->isUnderScannableLocalKeyPath(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private upload(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Lcom/liquable/aws/AwsSessionCredentialsDto;)V
    .locals 9
    .param p1, "from"    # Ljava/io/File;
    .param p2, "to"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p3, "cacheSeconds"    # I
    .param p4, "receiver"    # Landroid/os/ResultReceiver;
    .param p5, "credentialsDto"    # Lcom/liquable/aws/AwsSessionCredentialsDto;

    .prologue
    const/4 v5, 0x0

    .line 642
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    .line 644
    .local v8, "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    if-nez v8, :cond_0

    .line 646
    monitor-exit v1

    .line 667
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-virtual {v8}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, p4, v2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 652
    monitor-exit v1

    goto :goto_0

    .line 657
    .end local v8    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 656
    .restart local v8    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->running()V

    .line 657
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    iget-object v7, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->s3Service:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Landroid/os/ResultReceiver;Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;)V

    new-instance v1, Lcom/amazon/auth/NemoBasicSessionCredentials;

    .line 663
    invoke-virtual {p5}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-virtual {p5}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-virtual {p5}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {p5}, Lcom/liquable/aws/AwsSessionCredentialsDto;->getExpiration()J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/auth/NemoBasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v2, v7

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v6, v0

    move-object v7, v1

    .line 659
    invoke-virtual/range {v2 .. v7}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->upload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;ILcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 468
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->handler:Landroid/os/Handler;

    .line 469
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x0

    .line 473
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, "actionName":Ljava/lang/String;
    invoke-static {v7}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    move-result-object v6

    .line 475
    .local v6, "action":Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    if-eqz v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/liquable/util/DesignContract;->preCondition(Z)V

    .line 477
    const-string/jumbo v0, "callback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 478
    .local v4, "receiver":Landroid/os/ResultReceiver;
    const/4 v5, 0x0

    .line 480
    .local v5, "credentialsDto":Lcom/liquable/aws/AwsSessionCredentialsDto;
    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->getAwsSessionCredentials()Lcom/liquable/aws/AwsSessionCredentialsDto;

    move-result-object v5

    .line 481
    if-nez v5, :cond_1

    .line 482
    const/4 v0, 0x3

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v0, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_1
    return-void

    .end local v4    # "receiver":Landroid/os/ResultReceiver;
    .end local v5    # "credentialsDto":Lcom/liquable/aws/AwsSessionCredentialsDto;
    :cond_0
    move v0, v10

    .line 475
    goto :goto_0

    .line 485
    .restart local v4    # "receiver":Landroid/os/ResultReceiver;
    .restart local v5    # "credentialsDto":Lcom/liquable/aws/AwsSessionCredentialsDto;
    :catch_0
    move-exception v8

    .line 486
    .local v8, "e":Lcom/liquable/nemo/client/AsyncException;
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSessionCredentials error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/liquable/nemo/client/AsyncException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 487
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v12, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 491
    .end local v8    # "e":Lcom/liquable/nemo/client/AsyncException;
    :cond_1
    sget-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$2;->$SwitchMap$com$liquable$nemo$android$service$FileTransferAndroidService$FileTransferAction:[I

    invoke-virtual {v6}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->ordinal()I

    move-result v11

    aget v0, v0, v11

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 493
    :pswitch_0
    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 494
    .local v1, "from":Ljava/io/File;
    const-string/jumbo v0, "to"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 495
    .local v2, "to":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    const-string/jumbo v0, "cache_seconds"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "cacheSeconds":I
    move-object v0, p0

    .line 496
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->upload(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Lcom/liquable/aws/AwsSessionCredentialsDto;)V

    goto :goto_1

    .line 500
    .end local v1    # "from":Ljava/io/File;
    .end local v2    # "to":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .end local v3    # "cacheSeconds":I
    :pswitch_1
    const-string/jumbo v0, "to"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 501
    .restart local v2    # "to":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-direct {p0, v2, v4, v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->delete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Landroid/os/ResultReceiver;Lcom/liquable/aws/AwsSessionCredentialsDto;)V

    goto :goto_1

    .line 505
    .end local v2    # "to":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    :pswitch_2
    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 506
    .local v1, "from":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    const-string/jumbo v0, "to"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 507
    .local v2, "to":Ljava/io/File;
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->download(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Landroid/os/ResultReceiver;Lcom/liquable/aws/AwsSessionCredentialsDto;)V

    goto :goto_1

    .line 511
    .end local v1    # "from":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .end local v2    # "to":Ljava/io/File;
    :pswitch_3
    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "from":Ljava/lang/String;
    const-string/jumbo v0, "to"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 513
    .restart local v2    # "to":Ljava/io/File;
    const-string/jumbo v0, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/android/service/ExtraFileType;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/ExtraFileType;

    move-result-object v9

    .line 514
    .local v9, "type":Lcom/liquable/nemo/android/service/ExtraFileType;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, v9}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadStart(Lcom/liquable/nemo/android/service/ExtraFileType;)V

    .line 515
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->downloadExtraFile(Ljava/lang/String;Ljava/io/File;Landroid/os/ResultReceiver;Lcom/liquable/aws/AwsSessionCredentialsDto;)V

    goto/16 :goto_1

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 525
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 526
    :cond_0
    const/4 v7, 0x2

    .line 611
    :goto_0
    return v7

    .line 529
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "actionName":Ljava/lang/String;
    invoke-static {}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->toStrings()Ljava/util/List;

    move-result-object v2

    .line 531
    .local v2, "actionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 532
    const/4 v7, 0x2

    goto :goto_0

    .line 535
    :cond_2
    invoke-static {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    move-result-object v0

    .line 537
    .local v0, "action":Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    if-eqz v0, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Lcom/liquable/util/DesignContract;->preCondition(Z)V

    .line 538
    const-string/jumbo v7, "callback"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 539
    .local v4, "receiver":Landroid/os/ResultReceiver;
    sget-object v7, Lcom/liquable/nemo/android/service/FileTransferAndroidService$2;->$SwitchMap$com$liquable$nemo$android$service$FileTransferAndroidService$FileTransferAction:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 611
    :goto_2
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v7

    goto :goto_0

    .line 537
    .end local v4    # "receiver":Landroid/os/ResultReceiver;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 541
    .restart local v4    # "receiver":Landroid/os/ResultReceiver;
    :pswitch_1
    const-string/jumbo v7, "to"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 542
    .local v5, "to":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-direct {p0, v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->findTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    move-result-object v6

    .line 543
    .local v6, "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    if-eqz v6, :cond_4

    .line 544
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 545
    const/4 v7, 0x2

    goto :goto_0

    .line 548
    :cond_4
    const-wide/16 v7, 0x0

    invoke-direct {p0, v7, v8, v4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->sendProgressMessage(DLandroid/os/ResultReceiver;)V

    .line 549
    sget-object v7, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-direct {p0, v5, v7, v4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->addTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Landroid/os/ResultReceiver;)V

    goto :goto_2

    .line 556
    .end local v5    # "to":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .end local v6    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :pswitch_2
    const-string/jumbo v7, "from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 558
    .local v3, "from":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-virtual {v3}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->checkWithinOneMinute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 559
    const/4 v7, 0x2

    goto :goto_0

    .line 562
    :cond_5
    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->findTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    move-result-object v6

    .line 563
    .restart local v6    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    if-eqz v6, :cond_6

    .line 564
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 565
    const/4 v7, 0x2

    goto :goto_0

    .line 568
    :cond_6
    const-wide/16 v7, 0x0

    invoke-direct {p0, v7, v8, v4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->sendProgressMessage(DLandroid/os/ResultReceiver;)V

    .line 569
    sget-object v7, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-direct {p0, v3, v7, v4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->addTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Landroid/os/ResultReceiver;)V

    .line 571
    sget-object v7, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->DOWNLOAD_THROTTLER:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 575
    .end local v3    # "from":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .end local v6    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :pswitch_3
    const-string/jumbo v7, "from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "from":Ljava/lang/String;
    iget-object v7, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->extraFileTransferTasks:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 577
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 578
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 581
    :cond_7
    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->checkWithinOneMinute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 582
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 585
    :cond_8
    const-wide/16 v7, 0x0

    invoke-direct {p0, v7, v8, v4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->sendProgressMessage(DLandroid/os/ResultReceiver;)V

    .line 586
    sget-object v7, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DOWNLOAD_EXTRA_FILE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    const-string/jumbo v8, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    .line 589
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/liquable/nemo/android/service/ExtraFileType;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/ExtraFileType;

    move-result-object v8

    .line 586
    invoke-direct {p0, v3, v7, v4, v8}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->addExtraTransferTask(Ljava/lang/String;Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Landroid/os/ResultReceiver;Lcom/liquable/nemo/android/service/ExtraFileType;)V

    .line 591
    sget-object v7, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->DOWNLOAD_THROTTLER:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 596
    .end local v3    # "from":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v7, "to"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 597
    .restart local v5    # "to":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-direct {p0, v0, v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->cancel(Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 598
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 601
    .end local v5    # "to":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    :pswitch_5
    const-string/jumbo v7, "from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 602
    .local v3, "from":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-direct {p0, v0, v3}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->cancel(Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 603
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 606
    .end local v3    # "from":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    :pswitch_6
    const-string/jumbo v7, "from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 607
    .local v3, "from":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->triggerMediaScannerIfRequired(Ljava/io/File;)V

    .line 608
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
