.class Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;
.super Ljava/lang/Object;
.source "ViewWaitAcceptFriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0184

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    .line 122
    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0182

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    .line 123
    # getter for: Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v4}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 122
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2$2;-><init>(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;)V

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c5

    new-instance v2, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2$1;-><init>(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 138
    return-void
.end method
