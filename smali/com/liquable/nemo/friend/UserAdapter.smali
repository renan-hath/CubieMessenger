.class public Lcom/liquable/nemo/friend/UserAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserAdapter.java"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final iconLoader:Lcom/liquable/nemo/util/ImageLoader;

.field protected final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/friend/UserAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/liquable/nemo/friend/UserAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/liquable/nemo/friend/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v0, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    invoke-direct {v0, p2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    .local v0, "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    :goto_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/liquable/nemo/friend/UserAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-static {}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create()Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIcon(Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 54
    return-object p2

    .line 50
    .end local v0    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    .restart local v0    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/UserAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method
