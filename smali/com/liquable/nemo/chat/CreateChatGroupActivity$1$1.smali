.class Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "CreateChatGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$memberIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->this$1:Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;

    iput-object p3, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->val$groupName:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->val$memberIds:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->val$groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->val$memberIds:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->createChatGroup(Ljava/lang/String;Ljava/util/List;)Lcom/liquable/nemo/group/model/ChatGroup;

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
    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->this$1:Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->showDialog(I)V

    .line 104
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->this$1:Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->removeDialog(I)V

    .line 110
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "result"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 114
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createChatGroup()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->this$1:Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;

    iget-object v1, v1, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    const-class v2, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->this$1:Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;

    iget-object v1, v1, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    iget-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->this$1:Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;

    iget-object v1, v1, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->finish()V

    .line 120
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->postExecuteSuccess(Lcom/liquable/nemo/group/model/ChatGroup;)V

    return-void
.end method
