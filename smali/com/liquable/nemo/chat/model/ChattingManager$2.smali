.class Lcom/liquable/nemo/chat/model/ChattingManager$2;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;->downloadChatGroupIcon(Lcom/liquable/nemo/group/model/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field final synthetic val$localKeyPathOfIcon:Lcom/liquable/nemo/storage/LocalKeyPath;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$2;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$2;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    iput-object p3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$2;->val$localKeyPathOfIcon:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$2;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$2;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupIconChanged(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 3
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 650
    sget-object v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->NO_SUCH_KEY:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 655
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$2;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v0

    const-string/jumbo v1, "default_chat_group_icon"

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$2;->val$localKeyPathOfIcon:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/storage/NemoFileService;->copyDrawableResourceToLocal(Ljava/lang/String;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    goto :goto_0
.end method
