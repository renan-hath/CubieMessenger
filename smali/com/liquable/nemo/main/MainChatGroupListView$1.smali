.class Lcom/liquable/nemo/main/MainChatGroupListView$1;
.super Landroid/content/BroadcastReceiver;
.source "MainChatGroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/main/MainChatGroupListView;
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
    .line 79
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$1;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-static {p2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->canHandle(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    const-string/jumbo v6, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    .line 84
    .local v1, "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    sget-object v6, Lcom/liquable/nemo/main/MainChatGroupListView$12;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/liquable/nemo/main/MainChatGroupListView$1;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v6}, Lcom/liquable/nemo/main/MainChatGroupListView;->batchedUpdate()V

    .line 132
    .end local v1    # "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    :cond_1
    :goto_1
    return-void

    .line 86
    .restart local v1    # "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    :pswitch_0
    invoke-static {p2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->getTopic(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "topic":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 90
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v6, v5}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 91
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_1

    .line 94
    iget-object v6, p0, Lcom/liquable/nemo/main/MainChatGroupListView$1;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    # invokes: Lcom/liquable/nemo/main/MainChatGroupListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v6}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$000(Lcom/liquable/nemo/main/MainChatGroupListView;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v6

    invoke-static {v0}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0

    .line 98
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v5    # "topic":Ljava/lang/String;
    :pswitch_1
    invoke-static {p2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->getTopic(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .restart local v5    # "topic":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 103
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v6, v5}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    .line 104
    .local v4, "reloaded":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v4, :cond_0

    .line 105
    iget-object v6, p0, Lcom/liquable/nemo/main/MainChatGroupListView$1;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    # getter for: Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;
    invoke-static {v6}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$100(Lcom/liquable/nemo/main/MainChatGroupListView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 106
    .local v2, "existIndex":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 107
    iget-object v6, p0, Lcom/liquable/nemo/main/MainChatGroupListView$1;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    # getter for: Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;
    invoke-static {v6}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$100(Lcom/liquable/nemo/main/MainChatGroupListView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    iget-object v6, p0, Lcom/liquable/nemo/main/MainChatGroupListView$1;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    # getter for: Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;
    invoke-static {v6}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$100(Lcom/liquable/nemo/main/MainChatGroupListView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 109
    iget-object v6, p0, Lcom/liquable/nemo/main/MainChatGroupListView$1;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    # invokes: Lcom/liquable/nemo/main/MainChatGroupListView;->filterChatGroups()V
    invoke-static {v6}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$200(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    goto :goto_0

    .line 118
    .end local v1    # "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    .end local v2    # "existIndex":I
    .end local v4    # "reloaded":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v5    # "topic":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    const-string/jumbo v6, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/model/MessageEvent;

    .line 121
    .local v1, "event":Lcom/liquable/nemo/chat/model/MessageEvent;
    sget-object v6, Lcom/liquable/nemo/main/MainChatGroupListView$12;->$SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/MessageEvent;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 123
    :pswitch_2
    const-string/jumbo v6, "com.liquable.nemo.chat.model.KEY_MESSAGE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/IDomainMessage;

    .line 124
    .local v3, "pictureMessage":Lcom/liquable/nemo/message/model/IDomainMessage;
    instance-of v6, v3, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v6, :cond_1

    .line 125
    iget-object v6, p0, Lcom/liquable/nemo/main/MainChatGroupListView$1;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    # getter for: Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListAdapter:Lcom/liquable/nemo/group/ChatGroupListAdapter;
    invoke-static {v6}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$300(Lcom/liquable/nemo/main/MainChatGroupListView;)Lcom/liquable/nemo/group/ChatGroupListAdapter;

    move-result-object v6

    check-cast v3, Lcom/liquable/nemo/message/model/PictureMessage;

    .end local v3    # "pictureMessage":Lcom/liquable/nemo/message/model/IDomainMessage;
    invoke-virtual {v6, v3}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->notifyDownloadComplete(Lcom/liquable/nemo/message/model/PictureMessage;)V

    goto/16 :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 121
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
