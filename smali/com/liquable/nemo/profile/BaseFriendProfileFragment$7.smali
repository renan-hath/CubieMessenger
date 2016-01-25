.class Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;
.super Ljava/lang/Object;
.source "BaseFriendProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->showRemoveFriendDialog(Landroid/app/Activity;Lcom/liquable/nemo/friend/model/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$blockCb:Landroid/widget/CheckBox;

.field final synthetic val$friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;Landroid/widget/CheckBox;Landroid/app/Activity;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    iput-object p2, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->val$blockCb:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->val$blockCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    iget-object v1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->blockFriend(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    iget-object v1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->deleteFriend(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V

    goto :goto_0
.end method
