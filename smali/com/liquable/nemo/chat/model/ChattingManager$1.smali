.class Lcom/liquable/nemo/chat/model/ChattingManager$1;
.super Ljava/lang/Object;
.source "ChattingManager.java"

# interfaces
.implements Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;->createRemoteKeyPathTransferListener(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$1;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$1;->val$remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$1;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$1;->val$remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 495
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$1;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$1;->val$remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferFail(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 500
    return-void
.end method

.method public onProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$1;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$1;->val$remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V

    .line 505
    return-void
.end method
