.class public Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatGroupMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;
    }
.end annotation


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

.field protected final iconLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final itemLayoutId:I

.field protected final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p4, "itemLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 43
    iput p4, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->itemLayoutId:I

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p3, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->friendList:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method protected createBaseViewHolder(Landroid/view/View;)Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 50
    new-instance v0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;

    invoke-direct {v0}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;-><init>()V

    .line 51
    .local v0, "viewHolder":Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;
    const v1, 0x7f08024d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->name:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f08024c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f08024b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->icon:Landroid/widget/ImageView;

    .line 54
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/friend/model/Account;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->getItem(I)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->itemLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 77
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;

    move-result-object v0

    .line 78
    .local v0, "viewHolder":Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->getItem(I)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->updateView(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;Landroid/view/View;)V

    .line 83
    return-object p2

    .line 80
    .end local v0    # "viewHolder":Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;

    .restart local v0    # "viewHolder":Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;
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
    .line 88
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->notifyDataSetChanged()V

    .line 91
    return-void
.end method

.method protected updateView(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_0
    iget-object v0, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 110
    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    const v1, 0x7f0d02c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v0, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
