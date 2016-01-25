.class Lcom/liquable/nemo/profile/ViewFriendProfileFragment$4;
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
    .line 207
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$4;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$4;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    new-instance v1, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$4;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$4;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v3}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v3

    const-string/jumbo v4, "friend_profile"

    invoke-direct {v1, v2, v3, v4}, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method
