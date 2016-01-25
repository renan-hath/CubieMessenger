.class Lcom/liquable/nemo/friend/RecommendFriendFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RecommendFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/RecommendFriendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/RecommendFriendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/RecommendFriendFragment;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment$1;->this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string/jumbo v2, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    .line 44
    .local v0, "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->REMOVE_RECOMMEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    if-ne v2, v0, :cond_0

    .line 45
    const-string/jumbo v2, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment$1;->this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;

    # getter for: Lcom/liquable/nemo/friend/RecommendFriendFragment;->friendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->access$000(Lcom/liquable/nemo/friend/RecommendFriendFragment;)Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    .end local v0    # "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v0    # "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    .restart local v1    # "id":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment$1;->this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;

    # getter for: Lcom/liquable/nemo/friend/RecommendFriendFragment;->friendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->access$000(Lcom/liquable/nemo/friend/RecommendFriendFragment;)Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->removeFriendById(Ljava/lang/String;)V

    goto :goto_0
.end method
