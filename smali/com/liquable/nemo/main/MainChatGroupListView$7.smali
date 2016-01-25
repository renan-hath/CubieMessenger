.class Lcom/liquable/nemo/main/MainChatGroupListView$7;
.super Ljava/lang/Object;
.source "MainChatGroupListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainChatGroupListView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainChatGroupListView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$7;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 362
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 353
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/Account;

    .line 355
    .local v1, "friend":Lcom/liquable/nemo/friend/model/Account;
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView$7;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v3}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 356
    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-static {v3, v4}, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 357
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView$7;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v3}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 359
    .end local v1    # "friend":Lcom/liquable/nemo/friend/model/Account;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView$7;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v3}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/main/MainChatGroupListView$7;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v4}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 360
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-static {v4, v5}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
