.class Lcom/liquable/nemo/profile/ViewFriendProfileFragment$3;
.super Ljava/lang/Object;
.source "ViewFriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->enableOneToOneChatGroup(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 197
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->profileCallback:Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;->goToChatting(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->createChatGroupIfNecessary(Lcom/liquable/nemo/friend/model/Account;)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$400(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;Lcom/liquable/nemo/friend/model/Account;)V

    goto :goto_0
.end method
