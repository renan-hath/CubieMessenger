.class Lcom/liquable/nemo/group/ChatGroupInfoActivity$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ChatGroupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->postExecuteSuccess(Ljava/lang/Void;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2$1;->this$1:Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;

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
    .line 116
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2$1;->this$1:Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->val$memberIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, "memberId":Ljava/lang/String;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CHATTING_ACTIVITY_DIALOG:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .line 122
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/liquable/nemo/notice/model/NoticeManager;->insertConfirmFriendNotice(Ljava/lang/String;JLcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)Lcom/liquable/nemo/notice/ConfirmFriendNotice;

    goto :goto_0

    .line 126
    .end local v0    # "memberId":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2$1;->this$1:Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;

    iget-object v2, v2, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->val$members:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->sendBecomeOneWayFriendMessages(Ljava/util/List;)V

    .line 127
    const/4 v1, 0x0

    return-object v1
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 134
    return-void
.end method
