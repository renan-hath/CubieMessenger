.class public Lcom/liquable/nemo/main/MutualFriendListAdapter;
.super Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;
.source "MutualFriendListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V
    .locals 0
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
    .line 19
    .local p3, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected updateView(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;Landroid/view/View;)V
    .locals 2
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->updateView(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/liquable/nemo/main/MutualFriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/liquable/nemo/main/MutualFriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 28
    const v0, 0x7f02013e

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    const v0, 0x7f02013d

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
