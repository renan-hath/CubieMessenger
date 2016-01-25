.class public Lcom/liquable/nemo/android/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# static fields
.field private static instance:Lcom/liquable/nemo/android/BroadcastManager;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)Landroid/content/Intent;
    .locals 3
    .param p1, "event"    # Lcom/liquable/nemo/group/model/ChatGroupEvent;
    .param p2, "updateGroupIconMessage"    # Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    .prologue
    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 540
    const-string/jumbo v1, "com.liquable.nemo.group.model.KEY_CHAT_GROUP_TOPIC"

    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-string/jumbo v1, "com.liquable.nemo.group.model.KEY_UPDATE_ICON_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 542
    return-object v0
.end method

.method private createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "event"    # Lcom/liquable/nemo/group/model/ChatGroupEvent;
    .param p2, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 532
    const-string/jumbo v1, "com.liquable.nemo.group.model.KEY_CHAT_GROUP_TOPIC"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    return-object v0
.end method

.method private createMediaMessageTransferEvent(Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Landroid/content/Intent;
    .locals 2
    .param p1, "event"    # Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    .param p2, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 549
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_REMOTE_KEYPATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 550
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/liquable/nemo/android/BroadcastManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/liquable/nemo/android/BroadcastManager;->instance:Lcom/liquable/nemo/android/BroadcastManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/liquable/nemo/android/BroadcastManager;->instance:Lcom/liquable/nemo/android/BroadcastManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/liquable/nemo/android/BroadcastManager;->instance:Lcom/liquable/nemo/android/BroadcastManager;

    return-object v0
.end method


# virtual methods
.method public broadcastAccountIconUpdated(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->ACCOUNT_ICON_UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public broadcastArticleReplyCountChange(Ljava/lang/String;I)V
    .locals 3
    .param p1, "articleId"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->ARTICLE_REPLY_COUNT_CHANGE:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_REPLY_COUNT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method public broadcastChatGroupCreated(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->CREATE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public broadcastChatGroupDeleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->DELETE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public broadcastChatGroupHistoryCleared(Ljava/lang/String;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->HISTORY_CLEAR:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public broadcastChatGroupHistoryIconChanged(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->HISTORY_ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public broadcastChatGroupIconChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public broadcastChatGroupMemberAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->MEMBER_ADD:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public broadcastChatGroupReadCountChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->READ_COUNT_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public broadcastChatGroupRemovedByOwner(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->REMOVED_BY_OWNER:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public broadcastChatGroupTitleChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->TITLE_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public broadcastChatGroupUpdated(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->UPDATE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public broadcastDownloadCoverResult(Lcom/liquable/nemo/friend/model/CoverResult;)V
    .locals 3
    .param p1, "coverResult"    # Lcom/liquable/nemo/friend/model/CoverResult;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.profile.ProfileEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/profile/ProfileEvent;->COVER_RESULT:Lcom/liquable/nemo/profile/ProfileEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "com.liquable.nemo.profile.KEY_COVER_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public broadcastEnterForumBoard(Ljava/lang/String;J)V
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "enterTime"    # J

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_ENTER_FORUM_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_ENTER_TIME"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public broadcastExtraFileDownloadAdd(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V
    .locals 3
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ADD:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V
    .locals 3
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_PATH"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public broadcastExtraFileDownloadFailed(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V
    .locals 3
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->FAIL:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public broadcastExtraFileDownloadStart(Lcom/liquable/nemo/android/service/ExtraFileType;)V
    .locals 3
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->START:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public broadcastExtraFileDownloadUpdate(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->PROGRESS:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_PROGRESS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method public broadcastExtraFileReady(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V
    .locals 3
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->READY:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public broadcastForumBoardReloadAfterDeleteArticle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_DELETE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method public broadcastForumBoardReloadAfterReportAbuseArticle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_REPORT_ABUSE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 172
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public broadcastForumBoardReloadAfterReportAbuseBoard(Ljava/lang/String;)V
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_REPORT_ABUSE_BAORD:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 189
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public broadcastForumBoardReloadArticleList(Ljava/lang/String;)V
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_ARTICLE_LIST:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 204
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public broadcastForumBoardUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->BOARD_UPDATE:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public broadcastForumLikeArticle(Ljava/lang/String;J)V
    .locals 3
    .param p1, "articleId"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->LIKE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 557
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_LIKE_COUNT"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 559
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 560
    return-void
.end method

.method public broadcastForumTabUnreadCountChange(Z)V
    .locals 3
    .param p1, "hasNewContent"    # Z

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->FORUM_TAB_UNREAD:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_UNREAD_COUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public broadcastFriendAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->ADD:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v1, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method public broadcastFriendBlocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->BLOCKED:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 240
    const-string/jumbo v1, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    return-void
.end method

.method public broadcastFriendConfirmed(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.notice.model.NoticeEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/notice/model/NoticeEvent;->FRIEND_CONFIRMED:Lcom/liquable/nemo/notice/model/NoticeEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v2, "com.liquable.nemo.notice.model.NoticeEvent.KEY_FRIEND_UIDS"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    return-void
.end method

.method public broadcastFriendDeleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->DELETE:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 254
    const-string/jumbo v1, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method public broadcastFriendImported()V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->IMPORT:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method public broadcastFriendInvitation(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.notice.model.NoticeEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/notice/model/NoticeEvent;->FRIEND_INVITATION:Lcom/liquable/nemo/notice/model/NoticeEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 267
    const-string/jumbo v2, "com.liquable.nemo.notice.model.NoticeEvent.KEY_FRIEND_UIDS"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method public broadcastFriendInvited(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->INVITE_FRIEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v1, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    return-void
.end method

.method public broadcastFriendListReload()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->RELOAD_FRIEND_LIST:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public broadcastFriendReloadRecommend()V
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->RELOAD_RECOMMEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    return-void
.end method

.method public broadcastFriendRemoveRecommend(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->REMOVE_RECOMMEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v1, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method public broadcastFriendUnblocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->UNBLOCKED:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 302
    const-string/jumbo v1, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    return-void
.end method

.method public broadcastFriendUpdated(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 309
    const-string/jumbo v1, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 311
    return-void
.end method

.method public broadcastHasNewOneWayFriend()V
    .locals 3

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/friend/model/FriendEvent;->HAS_NEW_ONE_WAY_FRIEND:Lcom/liquable/nemo/friend/model/FriendEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public broadcastMediaMounted()V
    .locals 3

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.storage.MediaMountEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/storage/MediaMountEvent;->MOUNT:Lcom/liquable/nemo/storage/MediaMountEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method public broadcastMediaUnmounted()V
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.storage.MediaMountEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/storage/MediaMountEvent;->UNMOUNT:Lcom/liquable/nemo/storage/MediaMountEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    return-void
.end method

.method public broadcastMessageDeleted(Lcom/liquable/nemo/message/model/IDomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/MessageEvent;->DELETE:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 334
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 335
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 336
    return-void
.end method

.method public broadcastMessageUpdate(Lcom/liquable/nemo/message/model/IDomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 343
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/MessageEvent;->UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 347
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public broadcastNewMessage(Lcom/liquable/nemo/message/model/IDomainMessage;Z)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .param p2, "fromSubAccount"    # Z

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/MessageEvent;->ADD:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 353
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 355
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_FROM_SUB_ACCOUNT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;->NEW_MESSAGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    .line 358
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-direct {p0, v2, v3}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    return-void
.end method

.method public broadcastNoticeViewUpdate()V
    .locals 3

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.notice.model.NoticeEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/notice/model/NoticeEvent;->NOTICE_VIEW_UPDATE:Lcom/liquable/nemo/notice/model/NoticeEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 365
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    return-void
.end method

.method public broadcastReloadForumFavoriteBoards()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_FAVORITE_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    return-void
.end method

.method public broadcastResendMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/MessageEvent;->RESEND:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 381
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;->NEW_MESSAGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    .line 384
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-direct {p0, v2, v3}, Lcom/liquable/nemo/android/BroadcastManager;->createChatGroupEvent(Lcom/liquable/nemo/group/model/ChatGroupEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public broadcastScanGallery()V
    .locals 4

    .prologue
    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    .line 402
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public broadcastSecretMessageUpdate()V
    .locals 3

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/MessageEvent;->SECRET_UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    return-void
.end method

.method public broadcastSendFromRobot(Ljava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.ROBOT_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/RobotEvent;->SEND_TO_ROBOT_GROUP:Lcom/liquable/nemo/chat/model/RobotEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 414
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    return-void
.end method

.method public broadcastSharingPictureMedia(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.SHARE_PICTURE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/SharePictureEvent;->START_SHARING:Lcom/liquable/nemo/chat/model/SharePictureEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    return-void
.end method

.method public broadcastStatus(Lcom/liquable/nemo/status/model/ReceivedStatus;)V
    .locals 3
    .param p1, "receivedStatus"    # Lcom/liquable/nemo/status/model/ReceivedStatus;

    .prologue
    .line 427
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.chat.model.STATUS_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/chat/model/StatusEvent;->TYPING:Lcom/liquable/nemo/chat/model/StatusEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 429
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method public broadcastStickerIndexNotice()V
    .locals 3

    .prologue
    .line 434
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.notice.model.NoticeEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/notice/model/NoticeEvent;->STICKER_INDEX_UPDATE:Lcom/liquable/nemo/notice/model/NoticeEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 436
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    return-void
.end method

.method public broadcastStickerLimitedTimeOfferSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.sticker.StickerEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->LIMITED_TIME_OFFER_SUCCESS:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 442
    const-string/jumbo v1, "com.liquable.nemo.sticker.KEY_PRODUCTS"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    return-void
.end method

.method public broadcastStickerPackageDownloadingStateChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 447
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.sticker.StickerEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PACKAGE_DOWNLOADING_STATE_CHANGED:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 449
    const-string/jumbo v1, "com.liquable.nemo.sticker.KEY_PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 451
    return-void
.end method

.method public broadcastStickerPurchaseCanceled(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "tos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.sticker.StickerEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_CANCELED:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_PRODUCTS"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_TOS"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 460
    return-void
.end method

.method public broadcastStickerPurchaseRpcFailedAfterRetries(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "tos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.sticker.StickerEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_FAILED_AFTER_RETRIES:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 466
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_PRODUCTS"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_TOS"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    return-void
.end method

.method public broadcastStickerPurchaseRpcStarted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.sticker.StickerEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_STARTED:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 474
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_PRODUCTS"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method public broadcastStickerPurchaseRpcSuccess(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "tos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.sticker.StickerEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_SUCCESS:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 482
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_PRODUCTS"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_TOS"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method public broadcastStickerPurchaseStarted(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "tos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.sticker.StickerEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_STARTED:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 491
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_PRODUCTS"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_TOS"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    return-void
.end method

.method public broadcastTransferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 2
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createMediaMessageTransferEvent(Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 499
    return-void
.end method

.method public broadcastTransferFail(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 2
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->FAIL:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createMediaMessageTransferEvent(Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    return-void
.end method

.method public broadcastTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V
    .locals 2
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "progress"    # I

    .prologue
    .line 507
    sget-object v1, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->PROGRESS:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->createMediaMessageTransferEvent(Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Landroid/content/Intent;

    move-result-object v0

    .line 509
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.KEY_PROGRESS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 511
    return-void
.end method

.method public broadcastUrlFileDownloadComplete(Lcom/liquable/nemo/util/urlimage/UrlFileType;I)V
    .locals 3
    .param p1, "type"    # Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .param p2, "code"    # I

    .prologue
    .line 514
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 516
    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.IMAGE_HASH_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public broadcastUrlFileDownloadFailed(Lcom/liquable/nemo/util/urlimage/UrlFileType;I)V
    .locals 3
    .param p1, "type"    # Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .param p2, "code"    # I

    .prologue
    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v2, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->FAIL:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 524
    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.TYPE"

    invoke-virtual {p1}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.IMAGE_HASH_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/liquable/nemo/android/BroadcastManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    return-void
.end method
