.class Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/MainActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/MainActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/MainActivity;Lcom/liquable/nemo/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/MainActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/MainActivity$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;-><init>(Lcom/liquable/nemo/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    const-string/jumbo v1, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;->this$0:Lcom/liquable/nemo/MainActivity;

    # invokes: Lcom/liquable/nemo/MainActivity;->reloadChatGroupTotalUnreadCount()V
    invoke-static {v1}, Lcom/liquable/nemo/MainActivity;->access$000(Lcom/liquable/nemo/MainActivity;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/MessageEvent;

    .line 93
    .local v0, "event":Lcom/liquable/nemo/chat/model/MessageEvent;
    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->ADD:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/model/MessageEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_FROM_SUB_ACCOUNT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;->this$0:Lcom/liquable/nemo/MainActivity;

    # invokes: Lcom/liquable/nemo/MainActivity;->increaseChatGroupTotalUnreadCount()V
    invoke-static {v1}, Lcom/liquable/nemo/MainActivity;->access$100(Lcom/liquable/nemo/MainActivity;)V

    goto :goto_0

    .line 100
    .end local v0    # "event":Lcom/liquable/nemo/chat/model/MessageEvent;
    :cond_2
    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/FriendEvent;

    .line 103
    .local v0, "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    sget-object v1, Lcom/liquable/nemo/MainActivity$8;->$SwitchMap$com$liquable$nemo$friend$model$FriendEvent:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/FriendEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;->this$0:Lcom/liquable/nemo/MainActivity;

    # invokes: Lcom/liquable/nemo/MainActivity;->reloadNoticeTotalUnreadCount()V
    invoke-static {v1}, Lcom/liquable/nemo/MainActivity;->access$200(Lcom/liquable/nemo/MainActivity;)V

    .line 106
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;->this$0:Lcom/liquable/nemo/MainActivity;

    # invokes: Lcom/liquable/nemo/MainActivity;->reloadUnacceptInvitationCount()V
    invoke-static {v1}, Lcom/liquable/nemo/MainActivity;->access$300(Lcom/liquable/nemo/MainActivity;)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;->this$0:Lcom/liquable/nemo/MainActivity;

    # invokes: Lcom/liquable/nemo/MainActivity;->reloadUnacceptInvitationCount()V
    invoke-static {v1}, Lcom/liquable/nemo/MainActivity;->access$300(Lcom/liquable/nemo/MainActivity;)V

    goto :goto_0

    .line 118
    .end local v0    # "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    :cond_3
    const-string/jumbo v1, "com.liquable.nemo.notice.model.NoticeEvent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/model/NoticeEvent;

    .line 120
    .local v0, "event":Lcom/liquable/nemo/notice/model/NoticeEvent;
    sget-object v1, Lcom/liquable/nemo/notice/model/NoticeEvent;->NOTICE_VIEW_UPDATE:Lcom/liquable/nemo/notice/model/NoticeEvent;

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;->this$0:Lcom/liquable/nemo/MainActivity;

    # invokes: Lcom/liquable/nemo/MainActivity;->reloadNoticeTotalUnreadCount()V
    invoke-static {v1}, Lcom/liquable/nemo/MainActivity;->access$200(Lcom/liquable/nemo/MainActivity;)V

    goto/16 :goto_0

    .line 123
    .end local v0    # "event":Lcom/liquable/nemo/notice/model/NoticeEvent;
    :cond_4
    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchForumTabUnreadCountChange(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->isForumTabHasUnreadCount(Landroid/content/Intent;)Z

    move-result v2

    # invokes: Lcom/liquable/nemo/MainActivity;->reloadForumTabHasUnreadCount(Z)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/MainActivity;->access$400(Lcom/liquable/nemo/MainActivity;Z)V

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
