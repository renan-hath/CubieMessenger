.class public Lcom/liquable/nemo/friend/GroupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupListAdapter.java"


# instance fields
.field private chatGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;

.field protected final iconLoader:Lcom/liquable/nemo/util/ImageLoader;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final onIconClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onIconClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->chatGroups:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 34
    iput-object p3, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->onIconClickListener:Landroid/view/View$OnClickListener;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->chatGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->chatGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/GroupListAdapter;->getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300da

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v1, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    invoke-direct {v1, p2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    .local v1, "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    iget-object v2, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->onIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setOnIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIconClickable(Z)V

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/GroupListAdapter;->getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 66
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-static {v0}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIcon(Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIconTag(Ljava/lang/Object;)V

    .line 69
    return-object p2

    .line 63
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    goto :goto_0
.end method

.method public reset(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iput-object p1, p0, Lcom/liquable/nemo/friend/GroupListAdapter;->chatGroups:Ljava/util/List;

    .line 74
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/GroupListAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method
