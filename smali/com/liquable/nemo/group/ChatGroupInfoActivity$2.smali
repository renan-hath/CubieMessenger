.class Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ChatGroupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/ChatGroupInfoActivity;->addFriends(Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

.field final synthetic val$memberIds:Ljava/util/List;

.field final synthetic val$members:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    iput-object p3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->val$memberIds:Ljava/util/List;

    iput-object p4, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->val$members:Ljava/util/List;

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
    .line 95
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

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
    .line 99
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->val$memberIds:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->recoverFriends(Ljava/util/List;Z)V

    .line 100
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->add_all:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->addFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)V

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->showDialog(I)V

    .line 107
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->removeDialog(I)V

    .line 112
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 116
    new-instance v0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2$1;

    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2$1;-><init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 135
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2$1;->execute([Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    const v1, 0x7f0d0055

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 138
    return-void
.end method
