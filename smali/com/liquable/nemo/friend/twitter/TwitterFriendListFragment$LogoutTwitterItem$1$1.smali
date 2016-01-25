.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;

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
    .line 140
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

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
    .line 145
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/user/model/UserManager;->disconnectTwitter(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$400(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 152
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 157
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 140
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 161
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    new-instance v1, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->saveTwitterCredential(Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;)V

    .line 162
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setTwitterId(Ljava/lang/Long;)V

    .line 163
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->close()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$600(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V

    .line 164
    return-void
.end method
