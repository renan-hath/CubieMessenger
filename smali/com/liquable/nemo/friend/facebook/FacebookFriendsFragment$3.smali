.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "FacebookFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->onFacebookLogined(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

.field final synthetic val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    iput-object p3, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

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
    .line 267
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    iget-object v2, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->listFacebookFriends(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1300(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriends:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1202(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/util/List;)Ljava/util/List;

    .line 272
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # getter for: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriends:Ljava/util/List;
    invoke-static {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1200(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1400(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;I)V

    .line 278
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1500(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;I)V

    .line 283
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 267
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # getter for: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1600(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->notifyAdapterDataChange(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1700(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/util/List;)V

    .line 289
    return-void
.end method
