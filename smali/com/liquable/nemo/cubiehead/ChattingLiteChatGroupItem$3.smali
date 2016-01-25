.class Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;
.super Landroid/os/AsyncTask;
.source "ChattingLiteChatGroupItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->retrieveAndUpdateChatGroupUnreadCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 105
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->access$000(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnreadCount()I

    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 111
    sget-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRemainUnreadCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v2}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->access$000(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateChatGroupUnreadCount(J)V

    .line 115
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
