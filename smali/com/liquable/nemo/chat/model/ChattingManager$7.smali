.class Lcom/liquable/nemo/chat/model/ChattingManager$7;
.super Ljava/lang/Object;
.source "ChattingManager.java"

# interfaces
.implements Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;->startUploadLocationThumbnailThenSend(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$locationMessages:Ljava/util/List;

.field final synthetic val$remotKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 2767
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->val$locationMessages:Ljava/util/List;

    iput-object p3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->val$remotKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 2770
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->val$locationMessages:Ljava/util/List;

    # invokes: Lcom/liquable/nemo/chat/model/ChattingManager;->uploadLocationThumbThenSend(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$1000(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V

    .line 2771
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->val$locationMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/LocationMessage;

    .line 2772
    .local v0, "locationMessage":Lcom/liquable/nemo/message/model/LocationMessage;
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastMessageUpdate(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0

    .line 2774
    .end local v0    # "locationMessage":Lcom/liquable/nemo/message/model/LocationMessage;
    :cond_0
    return-void
.end method

.method public onFailed()V
    .locals 2

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->val$remotKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferFail(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2779
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$7;->val$locationMessages:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/NotifyManager;->notifyMessageSendFailed(Ljava/util/List;)V

    .line 2780
    return-void
.end method
