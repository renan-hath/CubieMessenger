.class public Lcom/liquable/nemo/friend/ContactListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactListAdapter.java"


# static fields
.field public static final SMS_SENT_ACTION:Ljava/lang/String; = "SMS_SENT_ACTION"


# instance fields
.field protected allContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/StrequentContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;

.field private highlightKey:Ljava/lang/String;

.field protected final iconLoader:Lcom/liquable/nemo/util/ImageLoader;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected visibleContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/StrequentContactInfo;",
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
            "Lcom/liquable/nemo/android/provider/StrequentContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/StrequentContactInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->visibleContactList:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p3, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->allContactList:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->visibleContactList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->visibleContactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/ContactListAdapter;->getItem(I)Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v0, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    invoke-direct {v0, p2}, Lcom/liquable/nemo/friend/FriendItemViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    .local v0, "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/ContactListAdapter;->getItem(I)Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/friend/ContactListAdapter;->updateView(Lcom/liquable/nemo/android/provider/StrequentContactInfo;Lcom/liquable/nemo/friend/FriendItemViewHolder;)V

    .line 69
    return-object p2

    .line 66
    .end local v0    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/FriendItemViewHolder;

    .restart local v0    # "viewHolder":Lcom/liquable/nemo/friend/FriendItemViewHolder;
    goto :goto_0
.end method

.method public reset(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->visibleContactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 80
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->highlightKey:Ljava/lang/String;

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->highlightKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->allContactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    .line 87
    .local v0, "contactInfo":Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    invoke-virtual {v0}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->highlightKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->visibleContactList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v0    # "contactInfo":Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->highlightKey:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->visibleContactList:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->allContactList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/ContactListAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/StrequentContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/StrequentContactInfo;>;"
    iput-object p1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->allContactList:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->highlightKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/ContactListAdapter;->reset(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected updateView(Lcom/liquable/nemo/android/provider/StrequentContactInfo;Lcom/liquable/nemo/friend/FriendItemViewHolder;)V
    .locals 3
    .param p1, "contact"    # Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/friend/FriendItemViewHolder;

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "?"

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->highlightKey:Ljava/lang/String;

    .line 99
    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->getHighlightedSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->getPhotoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Ljava/lang/Long;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setIcon(Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/friend/ContactListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d0309

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setFriendState(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
