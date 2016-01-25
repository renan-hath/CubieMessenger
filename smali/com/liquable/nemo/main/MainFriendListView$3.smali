.class Lcom/liquable/nemo/main/MainFriendListView$3;
.super Ljava/lang/Object;
.source "MainFriendListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainFriendListView;->initOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainFriendListView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainFriendListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/liquable/nemo/main/MainFriendListView$3;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 231
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    const/4 v1, 0x0

    .line 232
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/liquable/nemo/main/MainFriendListView$7;->$SwitchMap$com$liquable$nemo$friend$model$Account$FriendState:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account$FriendState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 246
    :goto_1
    if-eqz v1, :cond_0

    .line 247
    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView$3;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView$3;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;
    invoke-static {v2}, Lcom/liquable/nemo/main/MainFriendListView;->access$800(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/widget/SearchBarWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/widget/SearchBarWidget;->reset()V

    goto :goto_0

    .line 234
    :pswitch_0
    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView$3;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 235
    goto :goto_1

    .line 237
    :pswitch_1
    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView$3;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 238
    goto :goto_1

    .line 240
    :pswitch_2
    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView$3;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 241
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-static {v2, v3}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 242
    goto :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
