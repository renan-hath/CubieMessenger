.class Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;
.super Ljava/lang/Object;
.source "FileTransferAndroidService.java"

# interfaces
.implements Lcom/liquable/nemo/android/service/FileTransferInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileTransferInfoImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;
    .param p2, "x1"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)V

    return-void
.end method


# virtual methods
.method public listAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    const-class v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->listTargetFilePath(Ljava/util/EnumSet;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$200(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listDownloading()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->listTargetFilePath(Ljava/util/EnumSet;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$200(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listUploading()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->listTargetFilePath(Ljava/util/EnumSet;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$200(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public triggerBroadcastProgress()V
    .locals 7

    .prologue
    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$300(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$300(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    .line 103
    .local v0, "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->getPercentage()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object v6

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->sendProgressMessage(DLandroid/os/ResultReceiver;)V
    invoke-static {v3, v4, v5, v6}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$100(Lcom/liquable/nemo/android/service/FileTransferAndroidService;DLandroid/os/ResultReceiver;)V

    goto :goto_0

    .line 107
    .end local v0    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    return-void
.end method
