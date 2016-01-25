.class Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;
.super Ljava/lang/Object;
.source "FileTransferAndroidService.java"

# interfaces
.implements Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileTransferProgressListener"
.end annotation


# instance fields
.field private final localFile:Ljava/io/File;

.field private final receiver:Landroid/os/ResultReceiver;

.field private final remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

.field final synthetic this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p3, "localFile"    # Ljava/io/File;
    .param p4, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 120
    iput-object p3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->localFile:Ljava/io/File;

    .line 121
    iput-object p4, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->receiver:Landroid/os/ResultReceiver;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Landroid/os/ResultReceiver;Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;
    .param p2, "x1"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p3, "x2"    # Ljava/io/File;
    .param p4, "x3"    # Landroid/os/ResultReceiver;
    .param p5, "x4"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Landroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 7

    .prologue
    .line 128
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$300(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$300(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    .line 130
    .local v0, "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    if-nez v0, :cond_0

    .line 132
    monitor-exit v2

    .line 143
    :goto_0
    return-void

    .line 134
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v3, v4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->updatePercentage(D)V

    .line 136
    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->receiver:Landroid/os/ResultReceiver;

    const/4 v6, 0x0

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V
    invoke-static {v1, v3, v4, v5, v6}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$400(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 142
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 139
    .restart local v0    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->receiver:Landroid/os/ResultReceiver;

    const/4 v6, 0x0

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V
    invoke-static {v1, v3, v4, v5, v6}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$400(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 140
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->localFile:Ljava/io/File;

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->triggerMediaScannerIfRequired(Ljava/io/File;)V
    invoke-static {v1, v3}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$500(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onDataTransfered(D)V
    .locals 4
    .param p1, "percentage"    # D

    .prologue
    .line 147
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$300(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$300(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    .line 149
    .local v0, "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    if-nez v0, :cond_0

    .line 151
    monitor-exit v2

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    monitor-exit v2

    goto :goto_0

    .line 160
    .end local v0    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 159
    .restart local v0    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->updatePercentage(D)V

    .line 160
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->receiver:Landroid/os/ResultReceiver;

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->sendProgressMessage(DLandroid/os/ResultReceiver;)V
    invoke-static {v1, p1, p2, v2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$100(Lcom/liquable/nemo/android/service/FileTransferAndroidService;DLandroid/os/ResultReceiver;)V

    goto :goto_0
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 7
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 167
    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;
    invoke-static {v2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$300(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->transferTasks:Ljava/util/Map;
    invoke-static {v2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$300(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;

    .line 169
    .local v1, "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    if-nez v1, :cond_0

    .line 171
    monitor-exit v3

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ERROR_CODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 175
    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferProgressListener;->receiver:Landroid/os/ResultReceiver;

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endTransferTask(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V
    invoke-static {v2, v4, v5, v6, v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$400(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 176
    monitor-exit v3

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "transferTask":Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
