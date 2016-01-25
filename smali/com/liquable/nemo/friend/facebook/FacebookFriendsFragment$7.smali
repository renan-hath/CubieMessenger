.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7;
.super Ljava/lang/Object;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->popupAddFacebookFriendDialog(Lcom/liquable/nemo/model/account/AccountDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

.field final synthetic val$account:Lcom/liquable/nemo/model/account/AccountDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    iput-object p2, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7;->val$account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 355
    new-instance v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7$1;

    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7$1;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 394
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7$1;->execute([Ljava/lang/Object;)V

    .line 396
    return-void
.end method
