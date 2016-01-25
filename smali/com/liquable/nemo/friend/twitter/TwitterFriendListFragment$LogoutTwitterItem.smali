.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;
.super Lnet/londatiga/android/ActionItem;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogoutTwitterItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-direct {p0}, Lnet/londatiga/android/ActionItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p2, "x1"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v2, 0x7f0d03b3

    .line 136
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$LogoutTwitterItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v2, 0x7f0d00c5

    .line 168
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04dc

    .line 169
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04dd

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 172
    return-void
.end method
