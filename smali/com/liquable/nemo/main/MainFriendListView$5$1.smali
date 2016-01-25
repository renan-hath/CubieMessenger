.class Lcom/liquable/nemo/main/MainFriendListView$5$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "MainFriendListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainFriendListView$5;->createChatGroup(Lcom/liquable/nemo/friend/model/Account;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/main/MainFriendListView$5;

.field final synthetic val$friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainFriendListView$5;Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/main/MainFriendListView$5;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/liquable/nemo/main/MainFriendListView$5$1;->this$1:Lcom/liquable/nemo/main/MainFriendListView$5;

    iput-object p3, p0, Lcom/liquable/nemo/main/MainFriendListView$5$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/liquable/nemo/friend/model/Account;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liquable/nemo/main/MainFriendListView$5$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->createInvisibleOneToOneChatGroups(Ljava/util/List;)V

    .line 272
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->enableOneToOneChatGroup(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

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
    .line 268
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView$5$1;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$5$1;->this$1:Lcom/liquable/nemo/main/MainFriendListView$5;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 278
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$5$1;->this$1:Lcom/liquable/nemo/main/MainFriendListView$5;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->removeDialog(I)V

    .line 283
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$5$1;->this$1:Lcom/liquable/nemo/main/MainFriendListView$5;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/main/MainFriendListView;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainFriendListView;->access$902(Lcom/liquable/nemo/main/MainFriendListView;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 284
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$5$1;->this$1:Lcom/liquable/nemo/main/MainFriendListView$5;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 289
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 1
    .param p1, "result"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$5$1;->this$1:Lcom/liquable/nemo/main/MainFriendListView$5;

    # invokes: Lcom/liquable/nemo/main/MainFriendListView$5;->goToChatting(Lcom/liquable/nemo/group/model/ChatGroup;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/main/MainFriendListView$5;->access$1000(Lcom/liquable/nemo/main/MainFriendListView$5;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 294
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 268
    check-cast p1, Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView$5$1;->postExecuteSuccess(Lcom/liquable/nemo/group/model/ChatGroup;)V

    return-void
.end method
