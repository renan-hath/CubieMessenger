.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "FacebookFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;->this$1:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;

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
    .line 80
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/user/model/UserManager;->disconnectFacebook(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/liquable/nemo/util/RpcAsyncTask;->onPreExecute()V

    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;->this$1:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;

    iget-object v0, v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$100(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;I)V

    .line 92
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;->this$1:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;

    iget-object v0, v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$200(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;I)V

    .line 97
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;->this$1:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;

    iget-object v0, v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showLogoutToast()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$300(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook$1;->this$1:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;

    iget-object v0, v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->finishAndLogoutFacebook()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$400(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    .line 103
    return-void
.end method
