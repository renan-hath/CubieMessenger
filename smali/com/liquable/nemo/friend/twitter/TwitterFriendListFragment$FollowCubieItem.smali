.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;
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
    name = "FollowCubieItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-direct {p0}, Lnet/londatiga/android/ActionItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p2, "x1"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v2, 0x7f0d03b3

    .line 66
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$2;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v2, 0x7f0d00c5

    .line 119
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$FollowCubieItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0286

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 125
    return-void
.end method
