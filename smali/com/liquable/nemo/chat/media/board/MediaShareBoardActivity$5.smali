.class Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;
.super Landroid/os/AsyncTask;
.source "MediaShareBoardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMedia(Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/message/model/AbstractMediaMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

.field final synthetic val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    iput-object p3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/AbstractMediaMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x32

    .line 249
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->getState()Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->MESSAGES:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    if-ne v0, v1, :cond_0

    .line 250
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    # getter for: Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->access$300(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    .line 252
    invoke-virtual {v3}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->getOffset()I

    move-result v3

    .line 250
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->listAllMessagesByType(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->getState()Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->ARCHIVED:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    if-ne v0, v1, :cond_1

    .line 255
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    # getter for: Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->access$300(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    .line 257
    invoke-virtual {v3}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->getOffset()I

    move-result v3

    .line 255
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->listAllArchivedMessagesByType(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/AbstractMediaMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/AbstractMediaMessage;>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->add(Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    # getter for: Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMediaTasks:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->access$400(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->val$type:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method
