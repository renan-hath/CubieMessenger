.class Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ChatGroupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChatGroupMenu$5;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/liquable/nemo/chat/ChatGroupMenu$5;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChatGroupMenu$5;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/ChatGroupMenu$5;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;->this$1:Lcom/liquable/nemo/chat/ChatGroupMenu$5;

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
    .line 158
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;->this$1:Lcom/liquable/nemo/chat/ChatGroupMenu$5;

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChatGroupMenu$5;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->deleteChatGroup(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;->this$1:Lcom/liquable/nemo/chat/ChatGroupMenu$5;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChatGroupMenu$5;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->showDialog(I)V

    .line 168
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;->this$1:Lcom/liquable/nemo/chat/ChatGroupMenu$5;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChatGroupMenu$5;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->removeDialog(I)V

    .line 173
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;->this$1:Lcom/liquable/nemo/chat/ChatGroupMenu$5;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChatGroupMenu$5;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->finish()V

    .line 178
    return-void
.end method
