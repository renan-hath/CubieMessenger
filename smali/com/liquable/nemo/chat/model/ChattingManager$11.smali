.class Lcom/liquable/nemo/chat/model/ChattingManager$11;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;->uploadPicturesThenSend(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 2913
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$11;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$11;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 2916
    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$11;->val$messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 2917
    .local v0, "message":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/PictureMessage;->completeS()V

    .line 2918
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/PictureMessage;->completeN()V

    .line 2919
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$11;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;
    invoke-static {v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$1100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/db/MessageDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/MessageDao;->updateMessageContent(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 2920
    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$11;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;
    invoke-static {v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$700(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/client/service/IChattingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0

    .line 2922
    .end local v0    # "message":Lcom/liquable/nemo/message/model/PictureMessage;
    :cond_0
    return-void
.end method
