.class public Lcom/liquable/nemo/friend/RecommendFriendListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendFriendListAdapter.java"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final iconLoader:Lcom/liquable/nemo/util/ImageLoader;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected final recommendfriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p3, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->recommendfriendList:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->recommendfriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/model/account/RecommendFriendDto;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->recommendfriendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->getItem(I)Lcom/liquable/nemo/model/account/RecommendFriendDto;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v1, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v0, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    invoke-direct {v0, p2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    .local v0, "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->getItem(I)Lcom/liquable/nemo/model/account/RecommendFriendDto;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->updateView(Lcom/liquable/nemo/model/account/RecommendFriendDto;Lcom/liquable/nemo/friend/FriendItemViewHolder;)V

    .line 60
    return-object p2

    .line 57
    .end local v0    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    .restart local v0    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    goto :goto_0
.end method

.method public removeFriendById(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountUid"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->recommendfriendList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .line 65
    .local v0, "account":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->recommendfriendList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 71
    .end local v0    # "account":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method

.method public reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->recommendfriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->recommendfriendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->notifyDataSetChanged()V

    .line 78
    return-void
.end method

.method protected updateView(Lcom/liquable/nemo/model/account/RecommendFriendDto;Lcom/liquable/nemo/friend/FriendItemViewHolder;)V
    .locals 2
    .param p1, "recommendFriendDto"    # Lcom/liquable/nemo/model/account/RecommendFriendDto;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/friend/FriendItemViewHolder;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 84
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getRecommendFriend()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/model/account/AccountDto;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v1

    .line 83
    invoke-virtual {p2, v0, v1}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIcon(Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 85
    return-void
.end method
