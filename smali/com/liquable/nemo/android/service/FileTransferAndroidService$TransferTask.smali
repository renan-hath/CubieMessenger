.class Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;
.super Ljava/lang/Object;
.source "FileTransferAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransferTask"
.end annotation


# instance fields
.field private final action:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

.field private canceled:Z

.field private percentage:D

.field private final receiver:Landroid/os/ResultReceiver;

.field private state:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "action"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->canceled:Z

    .line 199
    sget-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;->QUEUE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->state:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;

    .line 202
    iput-object p1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->action:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    .line 203
    iput-object p2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->receiver:Landroid/os/ResultReceiver;

    .line 204
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAction()Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->action:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    return-object v0
.end method

.method public getPercentage()D
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->percentage:D

    return-wide v0
.end method

.method public getReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->receiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isQueued()Z
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->state:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;

    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;->QUEUE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized running()V
    .locals 1

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;->RUNNING:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->state:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TransferTask [action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->action:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->canceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePercentage(D)V
    .locals 0
    .param p1, "percentage"    # D

    .prologue
    .line 240
    iput-wide p1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$TransferTask;->percentage:D

    .line 241
    return-void
.end method
