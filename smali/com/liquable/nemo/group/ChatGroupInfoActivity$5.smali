.class Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ChatGroupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/ChatGroupInfoActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/liquable/nemo/group/model/ChatGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    iput-object p3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->val$topic:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->val$topic:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->syncChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 249
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->showDialog(I)V

    .line 260
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->removeDialog(I)V

    .line 265
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "result"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 271
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->finish()V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    # setter for: Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0, p1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->access$002(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/group/model/ChatGroup;

    .line 276
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    # invokes: Lcom/liquable/nemo/group/ChatGroupInfoActivity;->initChatGroup()V
    invoke-static {v0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->access$400(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->postExecuteSuccess(Lcom/liquable/nemo/group/model/ChatGroup;)V

    return-void
.end method
