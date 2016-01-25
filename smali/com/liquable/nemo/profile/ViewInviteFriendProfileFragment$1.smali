.class Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1;
.super Ljava/lang/Object;
.source "ViewInviteFriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->initButtons(Lcom/liquable/nemo/model/account/AccountDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;

.field final synthetic val$friend:Lcom/liquable/nemo/model/account/AccountDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;

    iput-object p2, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1;->val$friend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    new-instance v0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1$1;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1$1;-><init>(Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 76
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1$1;->execute([Ljava/lang/Object;)V

    .line 78
    return-void
.end method
