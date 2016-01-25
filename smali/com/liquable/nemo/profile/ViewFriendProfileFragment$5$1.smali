.class Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ViewFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

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
    .line 260
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

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
    .line 263
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pubChannelService:Lcom/liquable/nemo/client/service/PubChannelService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v2, v2, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .line 264
    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/client/service/PubChannelService;->unsubscribe(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->deleteFriendLocally(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$600(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;I)V

    .line 272
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$700(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;I)V

    .line 277
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscibeChannelTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$502(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 278
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 283
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .line 296
    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d04f1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v3, v3, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .line 297
    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v3}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 296
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 299
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendDeleted(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;->this$1:Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->close()V
    invoke-static {v0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$800(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)V

    goto :goto_0
.end method
