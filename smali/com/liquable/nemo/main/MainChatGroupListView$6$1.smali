.class Lcom/liquable/nemo/main/MainChatGroupListView$6$1;
.super Ljava/lang/Object;
.source "MainChatGroupListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainChatGroupListView$6;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/main/MainChatGroupListView$6;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainChatGroupListView$6;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/main/MainChatGroupListView$6;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->this$1:Lcom/liquable/nemo/main/MainChatGroupListView$6;

    iput-object p2, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "menuDialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 324
    if-nez p2, :cond_1

    .line 325
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->this$1:Lcom/liquable/nemo/main/MainChatGroupListView$6;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->this$1:Lcom/liquable/nemo/main/MainChatGroupListView$6;

    iget-object v1, v1, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 326
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v1, v2}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 327
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->this$1:Lcom/liquable/nemo/main/MainChatGroupListView$6;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    # getter for: Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$600(Lcom/liquable/nemo/main/MainChatGroupListView;)Lcom/liquable/nemo/widget/SearchBarWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->reset()V

    .line 333
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 334
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->this$1:Lcom/liquable/nemo/main/MainChatGroupListView$6;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    # invokes: Lcom/liquable/nemo/main/MainChatGroupListView;->popupDeleteChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$700(Lcom/liquable/nemo/main/MainChatGroupListView;Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0

    .line 330
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->this$1:Lcom/liquable/nemo/main/MainChatGroupListView$6;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainChatGroupListView$6;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$6$1;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    # invokes: Lcom/liquable/nemo/main/MainChatGroupListView;->popupCreateChatGroupShortcut(Lcom/liquable/nemo/group/model/ChatGroup;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$800(Lcom/liquable/nemo/main/MainChatGroupListView;Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0
.end method
