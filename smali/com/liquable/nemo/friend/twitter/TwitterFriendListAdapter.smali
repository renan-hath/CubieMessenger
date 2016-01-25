.class public Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TwitterFriendListAdapter.java"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final iconLoader:Lcom/liquable/nemo/util/ImageLoader;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected final twitterFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/twitter/TwitterFriend;",
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
            "Lcom/liquable/nemo/friend/twitter/TwitterFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "twitterFriendList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterFriend;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->twitterFriendList:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->twitterFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->twitterFriendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->getItem(I)Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300da

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v1, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    invoke-direct {v1, p2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    .local v1, "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->getItem(I)Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    move-result-object v0

    .line 60
    .local v0, "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->isConnectedToTwitter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0d03dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setFriendState(Ljava/lang/CharSequence;)V

    .line 68
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v3, Lcom/liquable/nemo/friend/twitter/TwitterIcon;

    .line 69
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getProfileImageUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getTwitterId()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/liquable/nemo/friend/twitter/TwitterIcon;-><init>(Ljava/net/URL;J)V

    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIcon(Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 70
    return-object p2

    .line 56
    .end local v0    # "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    .end local v1    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    goto :goto_0

    .line 63
    .restart local v0    # "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->isCubieFriend()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setFriendState(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0d0307

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setFriendState(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public removeFriend(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->twitterFriendList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .line 75
    .local v0, "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->isSameCubieAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->twitterFriendList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->notifyDataSetChanged()V

    .line 81
    .end local v0    # "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    :cond_1
    return-void
.end method

.method public reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/twitter/TwitterFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterFriend;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->twitterFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->twitterFriendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method
