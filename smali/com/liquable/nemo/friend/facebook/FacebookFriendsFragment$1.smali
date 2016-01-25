.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;
.super Ljava/lang/Object;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->initFacebookView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .line 190
    .local v0, "friend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->isConnectedToFacebook()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->popupAddFacebookFriendDialog(Lcom/liquable/nemo/model/account/AccountDto;)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$600(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/model/account/AccountDto;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # getter for: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    invoke-static {v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$700(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    iget-object v2, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # getter for: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    invoke-static {v2}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$700(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->postToWallUsingFacebookFeedDialog(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/friend/facebook/FacebookFriend;)V
    invoke-static {v1, v2, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$800(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/friend/facebook/FacebookFriend;)V

    goto :goto_0
.end method
