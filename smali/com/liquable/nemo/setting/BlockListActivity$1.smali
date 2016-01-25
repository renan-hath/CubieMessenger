.class Lcom/liquable/nemo/setting/BlockListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/BlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/BlockListActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/BlockListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/BlockListActivity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/setting/BlockListActivity$1;->this$0:Lcom/liquable/nemo/setting/BlockListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    .line 40
    .local v0, "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    sget-object v1, Lcom/liquable/nemo/friend/model/FriendEvent;->UNBLOCKED:Lcom/liquable/nemo/friend/model/FriendEvent;

    if-ne v1, v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/liquable/nemo/setting/BlockListActivity$1;->this$0:Lcom/liquable/nemo/setting/BlockListActivity;

    # getter for: Lcom/liquable/nemo/setting/BlockListActivity;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/setting/BlockListActivity;->access$000(Lcom/liquable/nemo/setting/BlockListActivity;)Lcom/liquable/nemo/friend/FriendListAdapter;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/FriendManager;->listBlockedFriends()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/FriendListAdapter;->reset(Ljava/util/List;)V

    .line 44
    .end local v0    # "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    :cond_0
    return-void
.end method
