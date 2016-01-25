.class Lcom/liquable/nemo/group/AddFriendDialog$1$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "AddFriendDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/AddFriendDialog$1$1;->postExecuteSuccess(Ljava/lang/Void;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/group/AddFriendDialog$1$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/AddFriendDialog$1$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/group/AddFriendDialog$1$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1$1;->this$1:Lcom/liquable/nemo/group/AddFriendDialog$1$1;

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
    .line 73
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/AddFriendDialog$1$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    iget-object v1, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1$1;->this$1:Lcom/liquable/nemo/group/AddFriendDialog$1$1;

    iget-object v1, v1, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

    iget-object v1, v1, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$account:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CHATTING_ACTIVITY_DIALOG:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .line 78
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/notice/model/NoticeManager;->insertConfirmFriendNotice(Ljava/lang/String;JLcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)Lcom/liquable/nemo/notice/ConfirmFriendNotice;

    .line 81
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/liquable/nemo/friend/model/Account;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liquable/nemo/group/AddFriendDialog$1$1$1;->this$1:Lcom/liquable/nemo/group/AddFriendDialog$1$1;

    iget-object v3, v3, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->this$0:Lcom/liquable/nemo/group/AddFriendDialog$1;

    iget-object v3, v3, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$account:Lcom/liquable/nemo/friend/model/Account;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->sendBecomeOneWayFriendMessages(Ljava/util/List;)V

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/AddFriendDialog$1$1$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 89
    return-void
.end method
