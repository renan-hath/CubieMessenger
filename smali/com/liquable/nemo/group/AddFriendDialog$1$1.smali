.class Lcom/liquable/nemo/group/AddFriendDialog$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "AddFriendDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/AddFriendDialog$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/AddFriendDialog$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/AddFriendDialog$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

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
    .line 50
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

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
    .line 56
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

    iget-object v1, v1, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->addFriend(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

    iget-object v1, v1, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$from:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->addFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)V

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

    iget-object v0, v0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 64
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

    iget-object v0, v0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 69
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/liquable/nemo/group/AddFriendDialog$1$1$1;

    iget-object v1, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

    iget-object v1, v1, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/group/AddFriendDialog$1$1$1;-><init>(Lcom/liquable/nemo/group/AddFriendDialog$1$1;Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 90
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/AddFriendDialog$1$1$1;->execute([Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

    iget-object v0, v0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

    iget-object v1, v1, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0d0055

    .line 93
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 92
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    return-void
.end method
