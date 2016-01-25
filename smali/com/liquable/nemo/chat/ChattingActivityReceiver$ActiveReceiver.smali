.class Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChattingActivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ChattingActivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActiveReceiver"
.end annotation


# instance fields
.field private final chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "chattingActivity"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 37
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->enqueueIfNotReady(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v13, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 46
    const-string/jumbo v13, "com.liquable.nemo.KEY_EVENT_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/model/MessageEvent;

    .line 47
    .local v2, "event":Lcom/liquable/nemo/chat/model/MessageEvent;
    # getter for: Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/model/MessageEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 48
    sget-object v13, Lcom/liquable/nemo/chat/model/MessageEvent;->DELETE:Lcom/liquable/nemo/chat/model/MessageEvent;

    if-ne v13, v2, :cond_2

    .line 50
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    const-string/jumbo v13, "com.liquable.nemo.chat.model.KEY_MESSAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v14, v13}, Lcom/liquable/nemo/chat/ChattingActivity;->deleteMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0

    .line 52
    :cond_2
    sget-object v13, Lcom/liquable/nemo/chat/model/MessageEvent;->SECRET_UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    if-ne v13, v2, :cond_3

    .line 53
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->scheduleSecretMessageTimer()V

    goto :goto_0

    .line 57
    :cond_3
    const-string/jumbo v13, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "msgId":Ljava/lang/String;
    sget-object v13, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v13, v7}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v4

    .line 59
    .local v4, "foundMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    if-eqz v4, :cond_0

    .line 63
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v4}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/chat/ChattingActivity;->isSameChatGroup(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 64
    const-string/jumbo v13, "com.liquable.nemo.chat.model.KEY_FROM_SUB_ACCOUNT"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 66
    .local v5, "fromSubAccount":Z
    sget-object v13, Lcom/liquable/nemo/chat/model/MessageEvent;->ADD:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v13, v2}, Lcom/liquable/nemo/chat/model/MessageEvent;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez v5, :cond_0

    .line 67
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->increaseRemainUnreadCount()V

    goto/16 :goto_0

    .line 71
    .end local v5    # "fromSubAccount":Z
    :cond_4
    sget-object v13, Lcom/liquable/nemo/chat/ChattingActivityReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/model/MessageEvent;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_0

    .line 73
    :pswitch_0
    const-string/jumbo v13, "com.liquable.nemo.chat.model.KEY_MESSAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 74
    .local v1, "addedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    if-eqz v1, :cond_5

    .end local v1    # "addedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :goto_1
    invoke-virtual {v13, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto/16 :goto_0

    .restart local v1    # "addedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_5
    move-object v1, v4

    goto :goto_1

    .line 78
    .end local v1    # "addedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v4}, Lcom/liquable/nemo/chat/ChattingActivity;->updateMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto/16 :goto_0

    .line 81
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v4}, Lcom/liquable/nemo/chat/ChattingActivity;->moveMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto/16 :goto_0

    .line 86
    .end local v2    # "event":Lcom/liquable/nemo/chat/model/MessageEvent;
    .end local v4    # "foundMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v7    # "msgId":Ljava/lang/String;
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->canHandle(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 87
    const-string/jumbo v13, "com.liquable.nemo.KEY_EVENT_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    .line 88
    .local v2, "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    # getter for: Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 90
    sget-object v13, Lcom/liquable/nemo/chat/ChattingActivityReceiver$1;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_0

    .line 92
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->clearHistory()V

    goto/16 :goto_0

    .line 95
    :pswitch_4
    invoke-static/range {p2 .. p2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->getUpdateIconMessage(Landroid/content/Intent;)Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    move-result-object v12

    .line 96
    .local v12, "updateGroupIconMessage":Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v12}, Lcom/liquable/nemo/chat/ChattingActivity;->updateHistoryIcon(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->onReceiveChatGroupEvent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 101
    .end local v12    # "updateGroupIconMessage":Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->onReceiveChatGroupEvent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 105
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->onReceiveChatGroupEvent(Landroid/content/Intent;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->updateRemainUnreadCount()V

    goto/16 :goto_0

    .line 110
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->onReceiveChatGroupEvent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 114
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->finish()V

    goto/16 :goto_0

    .line 120
    .end local v2    # "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    :cond_7
    const-string/jumbo v13, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 121
    const-string/jumbo v13, "com.liquable.nemo.chat.model.KEY_REMOTE_KEYPATH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 122
    .local v9, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    const-string/jumbo v13, "com.liquable.nemo.KEY_EVENT_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    .line 123
    .local v2, "event":Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    # getter for: Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 125
    sget-object v13, Lcom/liquable/nemo/chat/ChattingActivityReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MediaMessageTransferEvent:[I

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_2

    goto/16 :goto_0

    .line 127
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v9}, Lcom/liquable/nemo/chat/ChattingActivity;->transferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    goto/16 :goto_0

    .line 130
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v9}, Lcom/liquable/nemo/chat/ChattingActivity;->transferFailed(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    goto/16 :goto_0

    .line 133
    :pswitch_b
    const-string/jumbo v13, "com.liquable.nemo.chat.model.KEY_PROGRESS"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 134
    .local v8, "progress":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v9, v8}, Lcom/liquable/nemo/chat/ChattingActivity;->updateTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V

    goto/16 :goto_0

    .line 137
    .end local v2    # "event":Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    .end local v8    # "progress":I
    .end local v9    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    :cond_8
    const-string/jumbo v13, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 138
    const-string/jumbo v13, "com.liquable.nemo.KEY_EVENT_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/friend/model/FriendEvent;

    .line 139
    .local v2, "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    # getter for: Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/FriendEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v13, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "uid":Ljava/lang/String;
    invoke-static {v11}, Lcom/liquable/nemo/friend/model/Account;->isRobot(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v11}, Lcom/liquable/nemo/chat/ChattingActivity;->isMember(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 144
    :cond_9
    sget-object v13, Lcom/liquable/nemo/friend/model/FriendEvent;->ACCOUNT_ICON_UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    if-ne v13, v2, :cond_a

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v11}, Lcom/liquable/nemo/chat/ChattingActivity;->updateUserIcon(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 147
    :cond_a
    sget-object v13, Lcom/liquable/nemo/friend/model/FriendEvent;->UPDATE:Lcom/liquable/nemo/friend/model/FriendEvent;

    if-ne v13, v2, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 150
    .end local v2    # "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    .end local v11    # "uid":Ljava/lang/String;
    :cond_b
    const-string/jumbo v13, "com.liquable.nemo.chat.model.VOICE_MESSAGE_EVENT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 151
    const-string/jumbo v13, "com.liquable.nemo.KEY_EVENT_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    .line 152
    .local v2, "event":Lcom/liquable/nemo/chat/model/VoiceMessageEvent;
    # getter for: Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 153
    sget-object v13, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;->PLAY:Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    if-ne v13, v2, :cond_0

    .line 154
    const-string/jumbo v13, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "messageId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v6}, Lcom/liquable/nemo/chat/ChattingActivity;->playVoiceMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    .end local v2    # "event":Lcom/liquable/nemo/chat/model/VoiceMessageEvent;
    .end local v6    # "messageId":Ljava/lang/String;
    :cond_c
    const-string/jumbo v13, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 158
    const-string/jumbo v13, "com.liquable.nemo.KEY_EVENT_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .line 159
    .local v2, "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    const-string/jumbo v13, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "extraFileType":Ljava/lang/String;
    # getter for: Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->getWidgetManager()Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v13

    sget-object v14, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v13

    check-cast v13, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->handleExtraFileTransferEvent(Landroid/content/Intent;)V

    .line 164
    sget-object v13, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_PACKAGE:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v13}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->handlerStickerPackageTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto/16 :goto_0

    .line 166
    :cond_d
    sget-object v13, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v13}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->handlerStickerTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto/16 :goto_0

    .line 168
    :cond_e
    sget-object v13, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v13}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->handlerCustomStickerThumbnailReadyEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto/16 :goto_0

    .line 171
    .end local v2    # "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    .end local v3    # "extraFileType":Ljava/lang/String;
    :cond_f
    const/4 v13, 0x3

    new-array v13, v13, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const/4 v14, 0x0

    sget-object v15, Lcom/liquable/nemo/util/urlimage/UrlFileType;->YOUTUBE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_IMAGE:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_BUTTON:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v15, v13, v14

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchUrlFileTransferCompleteEvent(Landroid/content/Intent;[Lcom/liquable/nemo/util/urlimage/UrlFileType;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 175
    const-string/jumbo v13, "com.liquable.nemo.KEY_EVENT_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    .line 176
    .local v2, "event":Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;
    # getter for: Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 178
    .end local v2    # "event":Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;
    :cond_10
    const-string/jumbo v13, "com.liquable.nemo.storage.MediaMountEvent"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 179
    const-string/jumbo v13, "com.liquable.nemo.KEY_EVENT_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/storage/MediaMountEvent;

    .line 180
    .local v2, "event":Lcom/liquable/nemo/storage/MediaMountEvent;
    # getter for: Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liquable/nemo/storage/MediaMountEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/chat/ChattingActivity;->updateMediaMountStateTextView()V

    goto/16 :goto_0

    .line 182
    .end local v2    # "event":Lcom/liquable/nemo/storage/MediaMountEvent;
    :cond_11
    const-string/jumbo v13, "com.liquable.nemo.chat.model.STATUS_EVENT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 183
    const-string/jumbo v13, "com.liquable.nemo.KEY_EVENT_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/model/StatusEvent;

    .line 184
    .local v2, "event":Lcom/liquable/nemo/chat/model/StatusEvent;
    # getter for: Lcom/liquable/nemo/chat/ChattingActivityReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/model/StatusEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v13, "com.liquable.nemo.chat.model.KEY_STATUS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/status/model/ReceivedStatus;

    .line 186
    .local v10, "status":Lcom/liquable/nemo/status/model/ReceivedStatus;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/chat/ChattingActivityReceiver$ActiveReceiver;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v13, v10}, Lcom/liquable/nemo/chat/ChattingActivity;->onReceivedStatus(Lcom/liquable/nemo/status/model/ReceivedStatus;)V

    goto/16 :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 90
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 125
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
