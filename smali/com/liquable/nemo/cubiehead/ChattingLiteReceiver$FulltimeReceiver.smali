.class Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChattingLiteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FulltimeReceiver"
.end annotation


# instance fields
.field final chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "chattingLite"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 55
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 59
    const-string/jumbo v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 60
    sget-object v8, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive:MessageEvent."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->hideChattingLite(Landroid/content/Context;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string/jumbo v8, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 63
    const-string/jumbo v8, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/model/MessageEvent;

    .line 64
    .local v2, "event":Lcom/liquable/nemo/chat/model/MessageEvent;
    sget-object v8, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive:MessageEvent."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 66
    sget-object v8, Lcom/liquable/nemo/chat/model/MessageEvent;->DELETE:Lcom/liquable/nemo/chat/model/MessageEvent;

    if-ne v8, v2, :cond_2

    .line 68
    iget-object v9, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    const-string/jumbo v8, "com.liquable.nemo.chat.model.KEY_MESSAGE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v9, v8}, Lcom/liquable/nemo/cubiehead/ChattingLite;->deleteMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0

    .line 70
    :cond_2
    sget-object v8, Lcom/liquable/nemo/chat/model/MessageEvent;->SECRET_UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    if-ne v8, v2, :cond_3

    .line 71
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8}, Lcom/liquable/nemo/cubiehead/ChattingLite;->scheduleSecretMessageTimer()V

    goto :goto_0

    .line 75
    :cond_3
    const-string/jumbo v8, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "msgId":Ljava/lang/String;
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v8, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v4

    .line 77
    .local v4, "foundMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    if-eqz v4, :cond_0

    .line 81
    sget-object v8, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/model/MessageEvent;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    const-string/jumbo v8, "com.liquable.nemo.chat.model.KEY_MESSAGE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 84
    .local v0, "addedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    if-eqz v0, :cond_4

    .end local v0    # "addedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :goto_1
    invoke-virtual {v8, v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0

    .restart local v0    # "addedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_4
    move-object v0, v4

    goto :goto_1

    .line 88
    .end local v0    # "addedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :pswitch_1
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, v4}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, v4}, Lcom/liquable/nemo/cubiehead/ChattingLite;->moveMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto/16 :goto_0

    .line 96
    .end local v2    # "event":Lcom/liquable/nemo/chat/model/MessageEvent;
    .end local v4    # "foundMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v5    # "msgId":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 97
    const-string/jumbo v8, "com.liquable.nemo.group.model.KEY_CHAT_GROUP_TOPIC"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "chatGroupTopic":Ljava/lang/String;
    const-string/jumbo v8, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    .line 99
    .local v2, "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    sget-object v8, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive:ChatGroupEvent."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 101
    sget-object v8, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_0

    .line 104
    :pswitch_3
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->deleteChatGroup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :pswitch_4
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->resetChatGroupIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :pswitch_5
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->resetChatGroupTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :pswitch_6
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->reloadUnreadCount(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .end local v1    # "chatGroupTopic":Ljava/lang/String;
    .end local v2    # "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    :cond_6
    const-string/jumbo v8, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 120
    const-string/jumbo v8, "com.liquable.nemo.chat.model.KEY_REMOTE_KEYPATH"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 121
    .local v7, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    const-string/jumbo v8, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    .line 123
    .local v2, "event":Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    sget-object v8, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MediaMessageTransferEvent:[I

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_0

    .line 125
    :pswitch_7
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, v7}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateTransferAsComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    goto/16 :goto_0

    .line 128
    :pswitch_8
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, v7}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateTransferAsPending(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    goto/16 :goto_0

    .line 131
    :pswitch_9
    const-string/jumbo v8, "com.liquable.nemo.chat.model.KEY_PROGRESS"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 132
    .local v6, "progress":I
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, v7, v6}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V

    goto/16 :goto_0

    .line 135
    .end local v2    # "event":Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    .end local v6    # "progress":I
    .end local v7    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    :cond_7
    const-string/jumbo v8, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 136
    const-string/jumbo v8, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .line 137
    .local v2, "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    const-string/jumbo v8, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "extraFileType":Ljava/lang/String;
    sget-object v8, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive:ExtraFileTransferEvent."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 139
    sget-object v8, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_PACKAGE:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v8}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 140
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, p2, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->handlerStickerPackageTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto/16 :goto_0

    .line 141
    :cond_8
    sget-object v8, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v8}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 142
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, p2, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->handlerStickerTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto/16 :goto_0

    .line 143
    :cond_9
    sget-object v8, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v8}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 144
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, p2, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->handlerStickerThumbnailTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto/16 :goto_0

    .line 145
    :cond_a
    sget-object v8, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_ICON:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v8}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 146
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8, p2, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->handlerStickerCategoryIconTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto/16 :goto_0

    .line 148
    .end local v2    # "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    .end local v3    # "extraFileType":Ljava/lang/String;
    :cond_b
    const-string/jumbo v8, "com.liquable.nemo.chat.model.STATUS_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 149
    iget-object v9, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    const-string/jumbo v8, "com.liquable.nemo.chat.model.KEY_STATUS"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/status/model/ReceivedStatus;

    invoke-virtual {v9, v8}, Lcom/liquable/nemo/cubiehead/ChattingLite;->onReceivedStatus(Lcom/liquable/nemo/status/model/ReceivedStatus;)V

    goto/16 :goto_0

    .line 150
    :cond_c
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    sget-object v9, Lcom/liquable/nemo/util/urlimage/UrlFileType;->YOUTUBE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v9, v8, v10

    invoke-static {p2, v8}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchUrlFileTransferCompleteEvent(Landroid/content/Intent;[Lcom/liquable/nemo/util/urlimage/UrlFileType;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 152
    iget-object v8, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$FulltimeReceiver;->chattingLite:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v8}, Lcom/liquable/nemo/cubiehead/ChattingLite;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 101
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 123
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
