.class public Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
.super Lcom/liquable/nemo/forum/BoardListAdapter;
.source "FavoriteBoardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;
    }
.end annotation


# instance fields
.field private final recommends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/liquable/nemo/forum/BoardListAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->recommends:Ljava/util/List;

    return-void
.end method

.method private broadcastUnreadCountChange()V
    .locals 3

    .prologue
    .line 25
    iget-object v1, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->boards:Ljava/util/List;

    new-instance v2, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$1;-><init>(Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;)V

    invoke-static {v1, v2}, Lcom/liquable/util/CollectionsLean;->hasAny(Ljava/lang/Iterable;Lcom/liquable/util/Predicate;)Z

    move-result v0

    .line 31
    .local v0, "hasNewContent":Z
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumTabUnreadCountChange(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "newResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected createViewHolder()Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;

    invoke-direct {v0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;-><init>()V

    return-object v0
.end method

.method protected initViewHolder(Landroid/view/View;Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;)Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;

    .prologue
    .line 41
    move-object v0, p2

    check-cast v0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;

    .line 42
    .local v0, "boardViewHolder":Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;
    invoke-super {p0, p1, v0}, Lcom/liquable/nemo/forum/BoardListAdapter;->initViewHolder(Landroid/view/View;Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;)Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;

    .line 43
    const v1, 0x7f08023a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;->unreadLabelImageView:Landroid/widget/ImageView;

    .line 44
    return-object v0
.end method

.method public removeForumBoard(Lcom/liquable/nemo/forum/model/board/ForumBoard;)V
    .locals 1
    .param p1, "board"    # Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public replace(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "refreshed":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v2, "newResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    iget-object v4, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .line 50
    .local v0, "existBoard":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    const/4 v1, 0x0

    .line 51
    .local v1, "isMatch":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .line 52
    .local v3, "refreshedBoard":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v6

    .line 53
    invoke-virtual {v6}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v3    # "refreshedBoard":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    :cond_2
    if-nez v1, :cond_0

    .line 61
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v0    # "existBoard":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    .end local v1    # "isMatch":Z
    :cond_3
    iget-object v4, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 66
    iget-object v4, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    invoke-direct {p0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->broadcastUnreadCountChange()V

    .line 68
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "reloaded":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public reset(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "recommendedBoards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    .local p2, "favoriteBoards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    iget-object v1, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->recommends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "mergedBoards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-super {p0, v0}, Lcom/liquable/nemo/forum/BoardListAdapter;->reset(Ljava/util/List;)V

    .line 88
    invoke-direct {p0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->broadcastUnreadCountChange()V

    .line 89
    return-void
.end method

.method public updateLocalLastUpdateTime(Ljava/lang/String;J)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "lastUpdateTime"    # J

    .prologue
    .line 92
    iget-object v1, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->boards:Ljava/util/List;

    new-instance v2, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$2;-><init>(Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/liquable/util/CollectionsLean;->findFirst(Ljava/lang/Iterable;Lcom/liquable/util/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .line 99
    .local v0, "found":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->setLocalLastUpdateTime(J)V

    .line 103
    invoke-direct {p0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->broadcastUnreadCountChange()V

    .line 104
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected updateView(Landroid/content/Context;Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;Lcom/liquable/nemo/forum/model/board/ForumBoard;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    .param p3, "board"    # Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .prologue
    .line 109
    move-object v0, p2

    check-cast v0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;

    .line 110
    .local v0, "boardViewHolder":Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;
    invoke-super {p0, p1, v0, p3}, Lcom/liquable/nemo/forum/BoardListAdapter;->updateView(Landroid/content/Context;Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;Lcom/liquable/nemo/forum/model/board/ForumBoard;)V

    .line 112
    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->hasNewContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, v0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;->unreadLabelImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->recommends:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->cellView:Landroid/view/View;

    const v2, 0x7f020133

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    iget-object v1, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardIconMaskView:Landroid/view/View;

    const v2, 0x7f0203bb

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    :goto_1
    return-void

    .line 115
    :cond_0
    iget-object v1, v0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;->unreadLabelImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->cellView:Landroid/view/View;

    const v2, 0x7f020131

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    iget-object v1, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardIconMaskView:Landroid/view/View;

    const v2, 0x7f0203b7

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
