.class Lcom/liquable/nemo/main/MainChatGroupListView$5;
.super Ljava/lang/Object;
.source "MainChatGroupListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 285
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$5;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView$5;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 296
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string/jumbo v2, "CHAT_GROUP_TOPIC"

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView$5;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView$5;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    # getter for: Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;
    invoke-static {v2}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$600(Lcom/liquable/nemo/main/MainChatGroupListView;)Lcom/liquable/nemo/widget/SearchBarWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/widget/SearchBarWidget;->reset()V

    goto :goto_0
.end method
