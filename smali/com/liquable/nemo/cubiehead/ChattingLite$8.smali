.class Lcom/liquable/nemo/cubiehead/ChattingLite$8;
.super Landroid/os/AsyncTask;
.source "ChattingLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;)V
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
        "Lcom/liquable/nemo/group/model/ChatGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$8;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$8;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->listVisibleChatGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 268
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$8;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v6, 0x5

    .line 276
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 277
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$8;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;
    invoke-static {v4}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$900(Lcom/liquable/nemo/cubiehead/ChattingLite;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v4, v6, :cond_0

    .line 279
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "topic":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$8;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->createChatGroupItem(Ljava/lang/String;)Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    invoke-static {v4, v3}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1000(Lcom/liquable/nemo/cubiehead/ChattingLite;Ljava/lang/String;)Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    move-result-object v1

    .line 281
    .local v1, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$8;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItemAdd(Ljava/lang/String;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V
    invoke-static {v4, v3, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1100(Lcom/liquable/nemo/cubiehead/ChattingLite;Ljava/lang/String;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    .end local v3    # "topic":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$8;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v4}, Lcom/liquable/nemo/cubiehead/ChattingLite;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$8;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v4}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    if-nez v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$8;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v4}, Lcom/liquable/nemo/cubiehead/ChattingLite;->show()V

    .line 287
    :cond_1
    return-void
.end method
