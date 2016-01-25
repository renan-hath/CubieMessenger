.class Lcom/liquable/nemo/friend/model/FriendManager$2;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "FriendManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/model/FriendManager;->downloadDefaultCoverIfRequired(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/model/FriendManager;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/model/FriendManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/model/FriendManager;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/FriendManager$2;->this$0:Lcom/liquable/nemo/friend/model/FriendManager;

    iput-object p2, p0, Lcom/liquable/nemo/friend/model/FriendManager$2;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager$2;->this$0:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager$2;->val$uid:Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/friend/model/FriendManager;->copyDefaultCoverToUserCoverAndBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->access$200(Lcom/liquable/nemo/friend/model/FriendManager;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 4
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager$2;->this$0:Lcom/liquable/nemo/friend/model/FriendManager;

    # getter for: Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/friend/model/FriendManager;->access$000(Lcom/liquable/nemo/friend/model/FriendManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/friend/model/CoverResult;

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager$2;->val$uid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/friend/model/CoverResult;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastDownloadCoverResult(Lcom/liquable/nemo/friend/model/CoverResult;)V

    .line 261
    return-void
.end method
