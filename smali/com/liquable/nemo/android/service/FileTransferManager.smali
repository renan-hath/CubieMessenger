.class public Lcom/liquable/nemo/android/service/FileTransferManager;
.super Ljava/lang/Object;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;,
        Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;,
        Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;,
        Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;,
        Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;,
        Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
    }
.end annotation


# instance fields
.field private final broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

.field private final context:Landroid/content/Context;

.field private final nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

.field private final threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/android/BroadcastManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;
    .param p3, "broadcastService"    # Lcom/liquable/nemo/android/BroadcastManager;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;-><init>(Lcom/liquable/nemo/android/service/FileTransferManager$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 168
    iput-object p3, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    .line 169
    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/android/service/FileTransferManager;Ljava/util/List;Ljava/util/List;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadThenSend(Ljava/util/List;Ljava/util/List;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/android/service/FileTransferManager;)Lcom/liquable/nemo/android/BroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/FileTransferManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    return-object v0
.end method

.method private uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 4
    .param p1, "localFile"    # Ljava/io/File;
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p3, "cacheSeconds"    # I
    .param p4, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    const-class v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 235
    const-string/jumbo v1, "cache_seconds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string/jumbo v1, "to"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 237
    const-string/jumbo v1, "callback"

    new-instance v2, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    invoke-direct {v2, v3, p4}, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;-><init>(Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 240
    return-void
.end method

.method private uploadThenSend(Ljava/util/List;Ljava/util/List;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 9
    .param p3, "totalProgress"    # I
    .param p4, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/liquable/nemo/message/model/AbstractMediaMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;",
            ">;I",
            "Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/liquable/nemo/message/model/AbstractMediaMessage;>;"
    .local p2, "uploads":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    .line 293
    .local v4, "pair":Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;
    invoke-virtual {v4}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    invoke-virtual {v4}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->getRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v8

    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferManager$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/android/service/FileTransferManager$1;-><init>(Lcom/liquable/nemo/android/service/FileTransferManager;Ljava/util/List;ILcom/liquable/nemo/android/service/FileTransferManager$UploadPair;Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    invoke-virtual {p0, v7, v8, v0}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 317
    return-void
.end method


# virtual methods
.method public cancelDownload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 3
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    const-class v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->CANCEL_DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 176
    return-void
.end method

.method public cancelUpload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 3
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    const-class v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->CANCEL_UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    return-void
.end method

.method public discard(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 4
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    const-class v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DELETE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string/jumbo v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 190
    const-string/jumbo v1, "callback"

    new-instance v2, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    invoke-direct {v2, v3, p2}, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;-><init>(Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 193
    return-void
.end method

.method public downloadExtraFile(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 4
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/io/File;
    .param p4, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    const-class v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DOWNLOAD_EXTRA_FILE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string/jumbo v1, "to"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v1, "callback"

    new-instance v2, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    invoke-direct {v2, v3, p4}, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;-><init>(Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    return-void
.end method

.method public downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 4
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p3, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    const-class v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 216
    const-string/jumbo v1, "to"

    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {p2, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 217
    const-string/jumbo v1, "callback"

    new-instance v2, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->threadHandlerProvider:Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;

    invoke-direct {v2, v3, p3}, Lcom/liquable/nemo/android/service/FileTransferManager$TransferResultReceiver;-><init>(Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 220
    return-void
.end method

.method public uploadKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 1
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p3, "cacheSeconds"    # I
    .param p4, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 258
    return-void
.end method

.method public uploadKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 1
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p3, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 248
    return-void
.end method

.method public uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 1
    .param p1, "localFile"    # Ljava/io/File;
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p3, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 226
    return-void
.end method

.method public uploadKeyPath(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 2
    .param p1, "localKeyPath"    # Ljava/lang/String;
    .param p2, "remoteKeyPath"    # Ljava/lang/String;
    .param p3, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 264
    invoke-static {p2}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 263
    invoke-virtual {p0, v0, v1, p3}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 266
    return-void
.end method

.method public uploadKeyPaths(Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 11
    .param p2, "uploadBatch"    # Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;
    .param p3, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/liquable/nemo/message/model/AbstractMediaMessage;",
            ">;",
            "Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;",
            "Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/liquable/nemo/message/model/AbstractMediaMessage;>;"
    const/4 v10, 0x0

    .line 272
    const-wide/16 v3, 0x0

    .line 273
    .local v3, "sum":J
    # getter for: Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->uploads:Ljava/util/List;
    invoke-static {p2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->access$200(Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    .line 274
    .local v2, "pair":Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;
    iget-object v6, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-static {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->access$300(Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFileSize(Lcom/liquable/nemo/storage/LocalKeyPath;)J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 275
    goto :goto_0

    .line 276
    .end local v2    # "pair":Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;
    :cond_0
    # getter for: Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->uploads:Ljava/util/List;
    invoke-static {p2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->access$200(Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    .line 277
    .restart local v2    # "pair":Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;
    iget-object v6, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-static {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->access$300(Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFileSize(Lcom/liquable/nemo/storage/LocalKeyPath;)J

    move-result-wide v0

    .line 278
    .local v0, "fileSize":J
    long-to-double v6, v0

    long-to-double v8, v3

    div-double/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->updateRatio(D)V

    goto :goto_1

    .line 281
    .end local v0    # "fileSize":J
    .end local v2    # "pair":Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;
    :cond_1
    # getter for: Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->uploads:Ljava/util/List;
    invoke-static {p2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->access$200(Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    .line 282
    .restart local v2    # "pair":Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;
    iget-object v6, p0, Lcom/liquable/nemo/android/service/FileTransferManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->getRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V

    goto :goto_2

    .line 285
    .end local v2    # "pair":Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;
    :cond_2
    # getter for: Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->uploads:Ljava/util/List;
    invoke-static {p2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;->access$200(Lcom/liquable/nemo/android/service/FileTransferManager$UploadBatch;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, p1, v5, v10, p3}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadThenSend(Ljava/util/List;Ljava/util/List;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 286
    return-void
.end method
