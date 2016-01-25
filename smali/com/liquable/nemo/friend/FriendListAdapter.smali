.class public Lcom/liquable/nemo/friend/FriendListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendListAdapter.java"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final friendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation
.end field

.field private highlightKey:Ljava/lang/String;

.field protected final iconLoader:Lcom/liquable/nemo/util/ImageLoader;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final onIconClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p4, "onFriendIconClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p3, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->friendList:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->onIconClickListener:Landroid/view/View$OnClickListener;

    .line 45
    return-void
.end method

.method private createFriendViewHolder(Landroid/view/View;)Lcom/liquable/nemo/friend/FriendItemViewHolder;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 48
    new-instance v0, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/friend/FriendItemViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    .local v0, "friendItemViewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->onIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setOnIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/friend/model/Account;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/FriendListAdapter;->getItem(I)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    if-nez p2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300da

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    invoke-direct {p0, p2}, Lcom/liquable/nemo/friend/FriendListAdapter;->createFriendViewHolder(Landroid/view/View;)Lcom/liquable/nemo/friend/FriendItemViewHolder;

    move-result-object v1

    .line 74
    .local v1, "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/FriendListAdapter;->getItem(I)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 79
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {p0, p2, v1, v0}, Lcom/liquable/nemo/friend/FriendListAdapter;->updateView(Landroid/view/View;Lcom/liquable/nemo/friend/FriendItemViewHolder;Lcom/liquable/nemo/friend/model/Account;)V

    .line 80
    return-object p2

    .line 76
    .end local v0    # "friend":Lcom/liquable/nemo/friend/model/Account;
    .end local v1    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    goto :goto_0
.end method

.method public reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FriendListAdapter;->notifyDataSetChanged()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->highlightKey:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public resetWithSearchKey(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "searchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/FriendListAdapter;->reset(Ljava/util/List;)V

    .line 92
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->highlightKey:Ljava/lang/String;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->highlightKey:Ljava/lang/String;

    goto :goto_0
.end method

.method protected updateView(Landroid/view/View;Lcom/liquable/nemo/friend/FriendItemViewHolder;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/friend/FriendItemViewHolder;
    .param p3, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 102
    invoke-virtual {p2, p3}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIconTag(Ljava/lang/Object;)V

    .line 104
    sget-object v2, Lcom/liquable/nemo/friend/FriendListAdapter$1;->$SwitchMap$com$liquable$nemo$friend$model$Account$FriendState:[I

    invoke-virtual {p3}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account$FriendState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 115
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setFriendState(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    invoke-virtual {p3}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v2, v3, :cond_1

    const v2, 0x7f02016f

    :goto_1
    invoke-virtual {p2, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setBackground(I)V

    .line 122
    invoke-virtual {p3}, Lcom/liquable/nemo/friend/model/Account;->isNewFriend()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIsNew(Z)V

    .line 124
    invoke-virtual {p3}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->highlightKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->getHighlightedSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    .line 126
    .local v0, "name":Landroid/text/Spannable;
    const/4 v1, 0x0

    .line 127
    .local v1, "nameFromContact":Landroid/text/Spannable;
    invoke-virtual {p3}, Lcom/liquable/nemo/friend/model/Account;->getNicknameFromContact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3}, Lcom/liquable/nemo/friend/model/Account;->getNicknameFromContact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p3}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {p3}, Lcom/liquable/nemo/friend/model/Account;->getNicknameFromContact()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->highlightKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->getHighlightedSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    .line 133
    :cond_0
    invoke-virtual {p2, v0, v1}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-static {p3}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIcon(Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 135
    invoke-virtual {p3}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIconClickable(Z)V

    .line 136
    return-void

    .line 106
    .end local v0    # "name":Landroid/text/Spannable;
    .end local v1    # "nameFromContact":Landroid/text/Spannable;
    :pswitch_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0d02c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setFriendState(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0d02c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setFriendState(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0d02c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setFriendState(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 119
    :cond_1
    const v2, 0x7f02014a

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
