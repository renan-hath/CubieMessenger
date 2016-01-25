.class Lcom/liquable/nemo/chat/model/ChattingManager$5;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$message:Lcom/liquable/nemo/message/model/IDomainMessage;

.field final synthetic val$remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$5;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$5;->val$message:Lcom/liquable/nemo/message/model/IDomainMessage;

    iput-object p3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$5;->val$remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$5;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$5;->val$message:Lcom/liquable/nemo/message/model/IDomainMessage;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastMessageUpdate(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 728
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 732
    sget-object v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->NO_SUCH_KEY:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    if-ne p1, v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$5;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$5;->val$remoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastTransferFail(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    goto :goto_0
.end method
