.class public Lcom/liquable/nemo/forum/BoardListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    }
.end annotation


# static fields
.field public static final ITEM_VIEW_TYPE_DELETED:I = 0x2

.field public static final ITEM_VIEW_TYPE_NORMAL:I = 0x0

.field public static final ITEM_VIEW_TYPE_REPORTED:I = 0x1


# instance fields
.field protected final boards:Ljava/util/List;
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
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/BoardListAdapter;->boards:Ljava/util/List;

    return-void
.end method

.method private getDeletedItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d3

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 131
    :cond_0
    return-object p2
.end method

.method private getNormalItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    if-nez p2, :cond_0

    .line 100
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300d1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 101
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardListAdapter;->createViewHolder()Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/liquable/nemo/forum/BoardListAdapter;->initViewHolder(Landroid/view/View;Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;)Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;

    move-result-object v1

    .line 102
    .local v1, "viewHolder":Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardListAdapter;->getItem(I)Lcom/liquable/nemo/forum/model/board/ForumBoard;

    move-result-object v0

    .line 108
    .local v0, "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    invoke-virtual {p0, p4, v1, v0}, Lcom/liquable/nemo/forum/BoardListAdapter;->updateView(Landroid/content/Context;Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;Lcom/liquable/nemo/forum/model/board/ForumBoard;)V

    .line 109
    return-object p2

    .line 104
    .end local v0    # "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    .end local v1    # "viewHolder":Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    goto :goto_0
.end method

.method private getReportedItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 117
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d4

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 120
    :cond_0
    return-object p2
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
    .line 55
    .local p1, "newResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardListAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method protected createViewHolder()Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;

    invoke-direct {v0}, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;-><init>()V

    return-object v0
.end method

.method public getBoards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListAdapter;->boards:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/forum/model/board/ForumBoard;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardListAdapter;->getItem(I)Lcom/liquable/nemo/forum/model/board/ForumBoard;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardListAdapter;->getItem(I)Lcom/liquable/nemo/forum/model/board/ForumBoard;

    move-result-object v0

    .line 85
    .local v0, "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x2

    .line 90
    :goto_0
    return v1

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->isReported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 136
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardListAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/forum/BoardListAdapter;->getNormalItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    .line 139
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/forum/BoardListAdapter;->getNormalItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/forum/BoardListAdapter;->getReportedItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/forum/BoardListAdapter;->getDeletedItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x3

    return v0
.end method

.method protected initViewHolder(Landroid/view/View;Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;)Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;

    .prologue
    .line 155
    iput-object p1, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->cellView:Landroid/view/View;

    .line 156
    const v0, 0x7f0801d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/volley/toolbox/NetworkImageView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 157
    const v0, 0x7f080236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardIconMaskView:Landroid/view/View;

    .line 158
    const v0, 0x7f0801de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardTitleTextView:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f080239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->favoriteCountTextView:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f080227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->lastUpdateTimeTextView:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f080237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->lastArticleTitleTextView:Landroid/widget/TextView;

    .line 162
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    const v1, 0x7f0203b3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 164
    return-object p2
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
    .line 168
    .local p1, "reloaded":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardListAdapter;->notifyDataSetChanged()V

    .line 171
    return-void
.end method

.method public updateReported(Ljava/lang/String;)V
    .locals 3
    .param p1, "reportBoardId"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardListAdapter;->boards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .line 175
    .local v0, "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->setReported(Z)V

    .line 180
    .end local v0    # "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardListAdapter;->notifyDataSetChanged()V

    .line 181
    return-void
.end method

.method protected updateView(Landroid/content/Context;Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;Lcom/liquable/nemo/forum/model/board/ForumBoard;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
    .param p3, "board"    # Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIcon()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 187
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->lastArticleTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0073

    .line 188
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastArticle()Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v0

    .line 191
    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastArticle()Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decodeArticle(Lcom/liquable/nemo/model/forum/ForumArticleDto;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v7

    .line 192
    .local v7, "article":Lcom/liquable/nemo/forum/model/article/Article;
    invoke-virtual {v7}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v0

    instance-of v0, v0, Lcom/liquable/nemo/forum/model/article/UnknownArticle;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->lastArticleTitleTextView:Landroid/widget/TextView;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->lastArticleTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0d04ea

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .end local v7    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    :goto_0
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->isCertified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203b6

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 212
    :goto_1
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->favoriteCountTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getFavoriteCount()J

    move-result-wide v1

    .line 212
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v9, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->lastUpdateTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastUpdateTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/high16 v6, 0x80000

    .line 214
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void

    .line 196
    .restart local v7    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    :cond_0
    new-instance v8, Landroid/text/SpannableString;

    invoke-virtual {v7}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/forum/model/article/IArticleBody;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 197
    .local v8, "spannable":Landroid/text/Spannable;
    invoke-static {p1, v8}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;)V

    .line 198
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->lastArticleTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    .end local v7    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    .end local v8    # "spannable":Landroid/text/Spannable;
    :cond_1
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->lastArticleTitleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p2, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;->boardTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
