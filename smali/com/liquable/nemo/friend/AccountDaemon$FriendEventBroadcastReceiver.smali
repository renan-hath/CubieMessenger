.class Lcom/liquable/nemo/friend/AccountDaemon$FriendEventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/AccountDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendEventBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/AccountDaemon;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/friend/AccountDaemon;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/liquable/nemo/friend/AccountDaemon$FriendEventBroadcastReceiver;->this$0:Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/friend/AccountDaemon;Lcom/liquable/nemo/friend/AccountDaemon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/friend/AccountDaemon;
    .param p2, "x1"    # Lcom/liquable/nemo/friend/AccountDaemon$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/AccountDaemon$FriendEventBroadcastReceiver;-><init>(Lcom/liquable/nemo/friend/AccountDaemon;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    .line 57
    .local v0, "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    sget-object v1, Lcom/liquable/nemo/friend/AccountDaemon$2;->$SwitchMap$com$liquable$nemo$friend$model$FriendEvent:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/FriendEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 66
    .end local v0    # "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/AccountDaemon$FriendEventBroadcastReceiver;->this$0:Lcom/liquable/nemo/friend/AccountDaemon;

    # invokes: Lcom/liquable/nemo/friend/AccountDaemon;->processHasNewOneWayFriend()V
    invoke-static {v1}, Lcom/liquable/nemo/friend/AccountDaemon;->access$000(Lcom/liquable/nemo/friend/AccountDaemon;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
