.class public Lcom/liquable/nemo/forum/HotArticleListAdapter;
.super Lcom/liquable/nemo/forum/ArticleListAdapter;
.source "HotArticleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;
    }
.end annotation


# instance fields
.field private final hotArticles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/HotArticle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/forum/ArticleListAdapter;-><init>(J)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/HotArticleListAdapter;->hotArticles:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public addAllHotArticles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/HotArticle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/HotArticle;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/HotArticleListAdapter;->hotArticles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method protected createViewHolder()Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;

    invoke-direct {v0}, Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;-><init>()V

    return-object v0
.end method

.method protected getArticle(I)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/HotArticle;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getArticle()Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/forum/HotArticleListAdapter;->hotArticles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/forum/HotArticleListAdapter;->hotArticles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected initViewHolder(Landroid/view/View;Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;)Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;

    .prologue
    .line 56
    move-object v0, p2

    check-cast v0, Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;

    .line 57
    .local v0, "hotArticleViewHolder":Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;
    invoke-super {p0, p1, v0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->initViewHolder(Landroid/view/View;Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;)Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;

    .line 58
    const v1, 0x7f0801de

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;->boardTitleTextView:Landroid/widget/TextView;

    .line 59
    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/forum/HotArticleListAdapter;->hotArticles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    return-void
.end method

.method public updateDeletedArticle(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;)V
    .locals 5
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    .prologue
    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/forum/HotArticleListAdapter;->hotArticles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/liquable/nemo/forum/HotArticleListAdapter;->hotArticles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/HotArticle;

    .line 88
    .local v0, "hotArticle":Lcom/liquable/nemo/forum/model/HotArticle;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getArticle()Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getArticle()Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p3}, Lcom/liquable/nemo/forum/model/article/Article;->withDeleted(ZLcom/liquable/nemo/model/forum/ForumArticleDeleteReason;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    .line 93
    .local v2, "reloadedArticle":Lcom/liquable/nemo/forum/model/article/Article;
    iget-object v3, p0, Lcom/liquable/nemo/forum/HotArticleListAdapter;->hotArticles:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/forum/model/HotArticle;->withArticle(Lcom/liquable/nemo/forum/model/article/Article;)Lcom/liquable/nemo/forum/model/HotArticle;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v0    # "hotArticle":Lcom/liquable/nemo/forum/model/HotArticle;
    .end local v2    # "reloadedArticle":Lcom/liquable/nemo/forum/model/article/Article;
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->notifyDataSetChanged()V

    .line 98
    return-void

    .line 86
    .restart local v0    # "hotArticle":Lcom/liquable/nemo/forum/model/HotArticle;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected updateNormalView(Landroid/content/Context;Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    .param p3, "position"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 64
    move-object v3, p2

    check-cast v3, Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;

    .line 65
    .local v3, "hotArticleViewHolder":Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;
    invoke-virtual {p0, p3}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/forum/model/HotArticle;

    .line 66
    .local v2, "hotArticle":Lcom/liquable/nemo/forum/model/HotArticle;
    invoke-super {p0, p1, v3, p3}, Lcom/liquable/nemo/forum/ArticleListAdapter;->updateNormalView(Landroid/content/Context;Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;I)V

    .line 67
    iget-object v4, v3, Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;->boardTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v4, v3, Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;->boardTitleTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 68
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/model/forum/BoardCategory;->parse(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v0

    .line 71
    .local v0, "boardCategory":Lcom/liquable/nemo/model/forum/BoardCategory;
    iget-object v4, v3, Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;->boardTitleTextView:Landroid/widget/TextView;

    const v5, -0xe23e4f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/forum/ForumDaemon;->getBoardCategoryHotArticleDrawableResId(Lcom/liquable/nemo/model/forum/BoardCategory;)I

    move-result v1

    .line 74
    .local v1, "boardCategoryDrawableResId":I
    iget-object v4, v3, Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;->boardTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 74
    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void
.end method

.method public updateReportedArticle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/forum/HotArticleListAdapter;->hotArticles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/HotArticle;

    .line 102
    .local v0, "hotArticle":Lcom/liquable/nemo/forum/model/HotArticle;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getArticle()Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getArticle()Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/model/article/Article;->setReported(Z)V

    .line 110
    .end local v0    # "hotArticle":Lcom/liquable/nemo/forum/model/HotArticle;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->notifyDataSetChanged()V

    .line 111
    return-void
.end method
