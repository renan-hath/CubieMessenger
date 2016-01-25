.class Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;
.super Ljava/lang/Object;
.source "ViewAddFriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->initButtons(Lcom/liquable/nemo/friend/model/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

.field final synthetic val$friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    iput-object p2, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    new-instance v0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;-><init>(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 107
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->execute([Ljava/lang/Object;)V

    .line 108
    return-void
.end method
