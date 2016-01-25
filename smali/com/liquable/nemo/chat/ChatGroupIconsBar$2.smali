.class Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;
.super Landroid/os/AsyncTask;
.source "ChatGroupIconsBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroups(Lcom/liquable/nemo/group/model/ChatGroup;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
    .line 172
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->listVisibleChatGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 177
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroupIconCount:I
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$200(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 179
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$300(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 182
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$400(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 185
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$300(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->addChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    invoke-static {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$500(Lcom/liquable/nemo/chat/ChatGroupIconsBar;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 186
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 187
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 188
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    # invokes: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->addChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    invoke-static {v2, v0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$500(Lcom/liquable/nemo/chat/ChatGroupIconsBar;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->eventQueue:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$600(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 192
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->eventQueue:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$600(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 193
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->eventQueue:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$600(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    # invokes: Lcom/liquable/nemo/chat/ChatGroupIconsBar;->processChatGroupEvent(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->access$700(Lcom/liquable/nemo/chat/ChatGroupIconsBar;Landroid/content/Intent;)V

    goto :goto_1

    .line 196
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->updateChatGroupIcons()V

    .line 197
    return-void
.end method
