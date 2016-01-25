.class Lcom/liquable/nemo/main/MainFriendListView$1;
.super Landroid/content/BroadcastReceiver;
.source "MainFriendListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/main/MainFriendListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainFriendListView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainFriendListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SMS_SENT_ACTION"

    invoke-static {v7, v8}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView$1;->getResultCode()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 85
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v7}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0d04ab

    invoke-static {v7, v8}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v7}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0d04aa

    invoke-static {v7, v8}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-static {v7, v8}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 90
    const-string/jumbo v7, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/friend/model/FriendEvent;

    .line 92
    .local v3, "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    sget-object v7, Lcom/liquable/nemo/main/MainFriendListView$7;->$SwitchMap$com$liquable$nemo$friend$model$FriendEvent:[I

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/FriendEvent;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 131
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v7, v9}, Lcom/liquable/nemo/main/MainFriendListView;->update(Z)V

    goto :goto_0

    .line 94
    :pswitch_0
    const-string/jumbo v7, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "uid":Ljava/lang/String;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v7, v6}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 96
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_3

    .line 97
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # invokes: Lcom/liquable/nemo/main/MainFriendListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainFriendListView;->access$000(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v7

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 98
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainFriendListView;->access$100(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/friend/FriendListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liquable/nemo/friend/FriendListView;->notifyFriendsUpdated()V

    .line 100
    :cond_3
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;

    invoke-virtual {v7, v6}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->findRecommendFriendById(Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v1

    .line 101
    .local v1, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    if-eqz v1, :cond_4

    .line 102
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # invokes: Lcom/liquable/nemo/main/MainFriendListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainFriendListView;->access$200(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v7

    invoke-static {v1}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/model/account/AccountDto;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 103
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainFriendListView;->access$100(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/friend/FriendListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liquable/nemo/friend/FriendListView;->notifyRecommendFriendsUpdated()V

    .line 105
    :cond_4
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7, v6}, Lcom/liquable/nemo/util/Pref;->isMe(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 106
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # invokes: Lcom/liquable/nemo/main/MainFriendListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainFriendListView;->access$300(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v7

    invoke-static {}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create()Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 107
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainFriendListView;->access$100(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/friend/FriendListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liquable/nemo/friend/FriendListView;->notifyUserUpdated()V

    goto/16 :goto_0

    .line 114
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v1    # "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    .end local v6    # "uid":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v7, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainFriendListView;->access$100(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/friend/FriendListView;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/liquable/nemo/friend/FriendListView;->removeRecommendFriendById(Ljava/lang/String;)V

    .line 116
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v7, v9}, Lcom/liquable/nemo/main/MainFriendListView;->update(Z)V

    goto/16 :goto_0

    .line 120
    .end local v4    # "id":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v7, "com.liquable.nemo.friend.model.KEY_FRIEND_UID"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .restart local v4    # "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainFriendListView;->access$100(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/friend/FriendListView;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/liquable/nemo/friend/FriendListView;->removeRecommendFriendById(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v3    # "event":Lcom/liquable/nemo/friend/model/FriendEvent;
    .end local v4    # "id":Ljava/lang/String;
    :cond_5
    invoke-static {p2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->canHandle(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    const-string/jumbo v7, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    .line 136
    .local v3, "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    sget-object v7, Lcom/liquable/nemo/main/MainFriendListView$7;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 138
    :pswitch_3
    invoke-static {p2}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->getTopic(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "topic":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 142
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v7, v5}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    .line 143
    .local v2, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v2, :cond_0

    .line 146
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # invokes: Lcom/liquable/nemo/main/MainFriendListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainFriendListView;->access$400(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v7

    invoke-static {v2}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 151
    .end local v2    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v5    # "topic":Ljava/lang/String;
    :pswitch_4
    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$1;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v7, v9}, Lcom/liquable/nemo/main/MainFriendListView;->update(Z)V

    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 136
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
