.class Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2$2;
.super Ljava/lang/Object;
.source "ViewWaitAcceptFriendProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2$2;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2$2;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2$2;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2$2;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;

    iget-object v2, v2, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->deleteFriend(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V

    .line 129
    return-void
.end method
