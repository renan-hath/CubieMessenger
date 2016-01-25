.class Lcom/liquable/nemo/group/ChatGroupInfoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatGroupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/group/ChatGroupInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$1;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const-string/jumbo v3, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const-string/jumbo v3, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "uid":Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$1;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    # getter for: Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v3}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->access$000(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$1;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    # getter for: Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v3}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->access$000(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/group/model/ChatGroup;->containsMember(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v4, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$1;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    # getter for: Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v4}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->access$000(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 80
    .local v1, "renewChatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v3, Lcom/liquable/nemo/friend/model/FriendStateComparator;

    invoke-direct {v3}, Lcom/liquable/nemo/friend/model/FriendStateComparator;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$1;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    # getter for: Lcom/liquable/nemo/group/ChatGroupInfoActivity;->memberListAdapter:Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->access$100(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->reset(Ljava/util/List;)V

    .line 86
    .end local v0    # "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    .end local v1    # "renewChatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v2    # "uid":Ljava/lang/String;
    :cond_0
    return-void
.end method
