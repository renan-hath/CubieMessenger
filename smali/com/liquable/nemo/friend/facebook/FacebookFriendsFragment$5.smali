.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$5;
.super Ljava/lang/Object;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->onFilterBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

.field final synthetic val$dialogEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$5;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    iput-object p2, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$5;->val$dialogEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 303
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$5;->val$dialogEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "inputText":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$5;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d01ba

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$5;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->filterFacebookFriend(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1800(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
