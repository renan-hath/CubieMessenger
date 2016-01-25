.class Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "BaseFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->blockFriend(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    iput-object p3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    iput-object p4, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->val$context:Landroid/content/Context;

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
    .line 150
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

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
    .line 154
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->blockFriend(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$200(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;I)V

    .line 161
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$300(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;I)V

    .line 166
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->val$context:Landroid/content/Context;

    const v2, 0x7f0d00a9

    .line 171
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->close()V
    invoke-static {v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$400(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V

    .line 175
    return-void
.end method
