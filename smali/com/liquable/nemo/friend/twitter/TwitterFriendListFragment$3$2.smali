.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;
.super Ljava/lang/Object;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->popupAddTwitterFriendDialog(Lcom/liquable/nemo/friend/twitter/TwitterFriend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

.field final synthetic val$account:Lcom/liquable/nemo/model/account/AccountDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iput-object p2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->val$account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 494
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 540
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->execute([Ljava/lang/Object;)V

    .line 542
    return-void
.end method
