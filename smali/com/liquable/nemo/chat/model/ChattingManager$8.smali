.class Lcom/liquable/nemo/chat/model/ChattingManager$8;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;->uploadAudiosThenSend(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$audioMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 2844
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$8;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$8;->val$audioMessages:Ljava/util/List;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 2847
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$8;->val$audioMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/AudioMessage;

    .line 2848
    .local v0, "message":Lcom/liquable/nemo/message/model/AudioMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AudioMessage;->albumArtComplete()V

    .line 2849
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AudioMessage;->audioComplete()V

    .line 2850
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$8;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;
    invoke-static {v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$1100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/db/MessageDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/MessageDao;->updateMessageContent(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 2852
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$8;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;
    invoke-static {v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$700(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/client/service/IChattingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0

    .line 2854
    .end local v0    # "message":Lcom/liquable/nemo/message/model/AudioMessage;
    :cond_0
    return-void
.end method
