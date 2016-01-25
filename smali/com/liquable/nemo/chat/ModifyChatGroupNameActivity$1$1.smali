.class Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ModifyChatGroupNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;

.field final synthetic val$groupName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->this$1:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;

    iput-object p3, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->val$groupName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->this$1:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;

    iget-object v1, v1, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    # getter for: Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->access$100(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->val$groupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->modifyChatGroupName(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->this$1:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->showDialog(I)V

    .line 66
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->this$1:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->removeDialog(I)V

    .line 71
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->this$1:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->finish()V

    .line 76
    return-void
.end method
