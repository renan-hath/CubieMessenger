.class Lcom/liquable/nemo/android/service/FileTransferManager$1;
.super Ljava/lang/Object;
.source "FileTransferManager.java"

# interfaces
.implements Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/FileTransferManager;->uploadThenSend(Ljava/util/List;Ljava/util/List;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/FileTransferManager;

.field final synthetic val$fileTransferListener:Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

.field final synthetic val$messages:Ljava/util/List;

.field final synthetic val$pair:Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

.field final synthetic val$totalProgress:I

.field final synthetic val$uploads:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/FileTransferManager;Ljava/util/List;ILcom/liquable/nemo/android/service/FileTransferManager$UploadPair;Ljava/util/List;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/FileTransferManager;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->this$0:Lcom/liquable/nemo/android/service/FileTransferManager;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$uploads:Ljava/util/List;

    iput p3, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$totalProgress:I

    iput-object p4, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$pair:Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    iput-object p5, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$messages:Ljava/util/List;

    iput-object p6, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$fileTransferListener:Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .prologue
    .line 296
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$uploads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 297
    iget v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$totalProgress:I

    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$pair:Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->getRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .line 298
    .local v0, "completeProgress":I
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->this$0:Lcom/liquable/nemo/android/service/FileTransferManager;

    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$messages:Ljava/util/List;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$uploads:Ljava/util/List;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$fileTransferListener:Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    # invokes: Lcom/liquable/nemo/android/service/FileTransferManager;->uploadThenSend(Ljava/util/List;Ljava/util/List;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V
    invoke-static {v1, v2, v3, v0, v4}, Lcom/liquable/nemo/android/service/FileTransferManager;->access$400(Lcom/liquable/nemo/android/service/FileTransferManager;Ljava/util/List;Ljava/util/List;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 303
    .end local v0    # "completeProgress":I
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$fileTransferListener:Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    invoke-interface {v1}, Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;->onComplete()V

    .line 301
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->this$0:Lcom/liquable/nemo/android/service/FileTransferManager;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/FileTransferManager;->access$500(Lcom/liquable/nemo/android/service/FileTransferManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$pair:Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->getRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    goto :goto_0
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->this$0:Lcom/liquable/nemo/android/service/FileTransferManager;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/android/service/FileTransferManager;->access$500(Lcom/liquable/nemo/android/service/FileTransferManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$pair:Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->getRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferFail(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 308
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/NotifyManager;->notifyMessageSendFailed(Ljava/util/List;)V

    .line 309
    return-void
.end method

.method public onProgress(I)V
    .locals 6
    .param p1, "partialProgess"    # I

    .prologue
    .line 313
    iget v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$totalProgress:I

    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$pair:Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->getRatio()D

    move-result-wide v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .line 314
    .local v0, "realProgress":I
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->this$0:Lcom/liquable/nemo/android/service/FileTransferManager;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/FileTransferManager;->access$500(Lcom/liquable/nemo/android/service/FileTransferManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferManager$1;->val$pair:Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/FileTransferManager$UploadPair;->getRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V

    .line 315
    return-void
.end method
