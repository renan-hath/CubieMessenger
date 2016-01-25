.class Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;
.super Ljava/lang/Object;
.source "ChatGroupInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/ChatGroupInfoActivity;->initChatGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

.field final synthetic val$members:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    iput-object p2, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;->val$members:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/group/ChatGroupInfoActivity;->isAddFriend(Landroid/content/Intent;)Z
    invoke-static {v3}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->access$200(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v2, "nonFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;->val$members:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 198
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBlocked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    # invokes: Lcom/liquable/nemo/group/ChatGroupInfoActivity;->addFriends(Ljava/util/List;)V
    invoke-static {v3, v2}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->access$300(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Ljava/util/List;)V

    .line 211
    .end local v2    # "nonFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :goto_1
    return-void

    .line 205
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    const-class v4, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "CHAT_GROUP_TOPIC"

    iget-object v4, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    # getter for: Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v4}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->access$000(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->finish()V

    goto :goto_1
.end method
