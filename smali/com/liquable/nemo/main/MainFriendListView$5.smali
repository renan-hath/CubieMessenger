.class Lcom/liquable/nemo/main/MainFriendListView$5;
.super Ljava/lang/Object;
.source "MainFriendListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainFriendListView;->initOnClick()V
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
    .line 265
    iput-object p1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/main/MainFriendListView$5;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView$5;
    .param p1, "x1"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView$5;->goToChatting(Lcom/liquable/nemo/group/model/ChatGroup;)V

    return-void
.end method

.method private createChatGroup(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 3
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainFriendListView;->access$900(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/RpcAsyncTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    new-instance v1, Lcom/liquable/nemo/main/MainFriendListView$5$1;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/liquable/nemo/main/MainFriendListView$5$1;-><init>(Lcom/liquable/nemo/main/MainFriendListView$5;Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V

    # setter for: Lcom/liquable/nemo/main/MainFriendListView;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainFriendListView;->access$902(Lcom/liquable/nemo/main/MainFriendListView;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 296
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainFriendListView;->access$900(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/RpcAsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    .line 298
    :cond_0
    return-void
.end method

.method private goToChatting(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 304
    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;
    invoke-static {v1}, Lcom/liquable/nemo/main/MainFriendListView;->access$800(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/widget/SearchBarWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->reset()V

    .line 305
    return-void
.end method

.method private onContactInfoItemClicked(Lcom/liquable/nemo/android/provider/StrequentContactInfo;)V
    .locals 2
    .param p1, "contactInfo"    # Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-static {v0, p1, v1}, Lcom/liquable/nemo/friend/view/InviteFriendDialogs;->show(Landroid/content/Context;Lcom/liquable/nemo/android/provider/StrequentContactInfo;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method private onFriendItemClicked(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 4
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 313
    sget-object v1, Lcom/liquable/nemo/main/MainFriendListView$7;->$SwitchMap$com$liquable$nemo$friend$model$Account$FriendState:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account$FriendState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 328
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->enableOneToOneChatGroup(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 329
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0, v0}, Lcom/liquable/nemo/main/MainFriendListView$5;->goToChatting(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 334
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 316
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {v2, v3}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 317
    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;
    invoke-static {v1}, Lcom/liquable/nemo/main/MainFriendListView;->access$800(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/widget/SearchBarWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->reset()V

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 321
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-static {v2, v3}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 322
    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;
    invoke-static {v1}, Lcom/liquable/nemo/main/MainFriendListView;->access$800(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/widget/SearchBarWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->reset()V

    goto :goto_0

    .line 332
    .restart local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView$5;->createChatGroup(Lcom/liquable/nemo/friend/model/Account;)V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGroupItemClicked(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 338
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView$5;->goToChatting(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 340
    :cond_0
    return-void
.end method

.method private onRecommendFriendListItemClicked(Lcom/liquable/nemo/model/account/RecommendFriendDto;)V
    .locals 4
    .param p1, "recommendFriend"    # Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 381
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->recommend_in_main:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .line 380
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)Landroid/content/Intent;

    move-result-object v0

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 384
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    invoke-interface {v6, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v6

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 349
    iget-object v6, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    iget-object v7, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v7}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/friend/InviteFirendsActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/main/MainFriendListView;->startActivity(Landroid/content/Intent;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    invoke-interface {v6, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v3

    .line 354
    .local v3, "itemType":I
    if-eqz v3, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    invoke-interface {v6, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 359
    .local v2, "item":Ljava/lang/Object;
    instance-of v6, v2, Lcom/liquable/nemo/friend/model/Account;

    if-eqz v6, :cond_2

    move-object v0, v2

    .line 360
    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 361
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/main/MainFriendListView$5;->onFriendItemClicked(Lcom/liquable/nemo/friend/model/Account;)V

    goto :goto_0

    .line 362
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_2
    instance-of v6, v2, Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v6, :cond_3

    move-object v1, v2

    .line 363
    check-cast v1, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 364
    .local v1, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, v1}, Lcom/liquable/nemo/main/MainFriendListView$5;->onGroupItemClicked(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0

    .line 365
    .end local v1    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_3
    instance-of v6, v2, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    if-eqz v6, :cond_4

    move-object v4, v2

    .line 366
    check-cast v4, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .line 367
    .local v4, "recommendFriendDto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    invoke-direct {p0, v4}, Lcom/liquable/nemo/main/MainFriendListView$5;->onRecommendFriendListItemClicked(Lcom/liquable/nemo/model/account/RecommendFriendDto;)V

    goto :goto_0

    .line 368
    .end local v4    # "recommendFriendDto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    :cond_4
    instance-of v6, v2, Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    if-eqz v6, :cond_5

    move-object v5, v2

    .line 369
    check-cast v5, Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    .line 370
    .local v5, "strequentContactInfo":Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    invoke-direct {p0, v5}, Lcom/liquable/nemo/main/MainFriendListView$5;->onContactInfoItemClicked(Lcom/liquable/nemo/android/provider/StrequentContactInfo;)V

    goto :goto_0

    .line 371
    .end local v5    # "strequentContactInfo":Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    :cond_5
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 372
    iget-object v6, p0, Lcom/liquable/nemo/main/MainFriendListView$5;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # invokes: Lcom/liquable/nemo/main/MainFriendListView;->onUserItemClicked()V
    invoke-static {v6}, Lcom/liquable/nemo/main/MainFriendListView;->access$1100(Lcom/liquable/nemo/main/MainFriendListView;)V

    goto :goto_0
.end method
