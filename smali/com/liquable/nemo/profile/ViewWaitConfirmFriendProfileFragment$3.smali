.class Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$3;
.super Ljava/lang/Object;
.source "ViewWaitConfirmFriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->initButtons(Lcom/liquable/nemo/friend/model/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

.field final synthetic val$friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    iput-object p2, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$3;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$3;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->showRemoveFriendDialog(Landroid/app/Activity;Lcom/liquable/nemo/friend/model/Account;)V

    .line 102
    return-void
.end method
