.class public Lcom/liquable/nemo/forum/ArticleListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArticleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/ArticleListAdapter$DeletedViewHolder;,
        Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    }
.end annotation


# static fields
.field private static final FONT_SIZE_DIFF_BETWEEN_TITLE_AND_CREATOR:I = 0x2

.field private static final FONT_SIZE_DIFF_BETWEEN_TITLE_AND_TIME:I = 0x4

.field protected static final INVALID_LOCAL_LAST_UPDATE_TIME:J = -0x1L

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field protected static final ITEM_VIEW_TYPE_DELETED:I = 0x0

.field public static final ITEM_VIEW_TYPE_NORMAL:I = 0x2

.field protected static final ITEM_VIEW_TYPE_REPORTED:I = 0x1


# instance fields
.field private final articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/Article;",
            ">;"
        }
    .end annotation
.end field

.field private final likeCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private localLastUpdateTime:J

.field private final replyCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final viewedArticle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "localLastUpdateTime"    # J

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->viewedArticle:Ljava/util/List;

    .line 74
    iput-wide p1, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->localLastUpdateTime:J

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->replyCountMap:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->likeCountMap:Ljava/util/Map;

    .line 78
    return-void
.end method

.method private getDeletedItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getArticle(I)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    .line 254
    .local v0, "article":Lcom/liquable/nemo/forum/model/article/Article;
    if-nez p2, :cond_0

    .line 255
    new-instance v1, Lcom/liquable/nemo/forum/ArticleListAdapter$DeletedViewHolder;

    invoke-direct {v1}, Lcom/liquable/nemo/forum/ArticleListAdapter$DeletedViewHolder;-><init>()V

    .line 256
    .local v1, "deletedViewHolder":Lcom/liquable/nemo/forum/ArticleListAdapter$DeletedViewHolder;
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300cb

    const/4 v5, 0x0

    .line 257
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 258
    const v3, 0x7f08022b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/liquable/nemo/forum/ArticleListAdapter$DeletedViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    .line 259
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 263
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0d007d

    invoke-virtual {p4, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getDeletedReason()Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->i18NKey()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-static {p4, v4}, Lcom/liquable/nemo/util/Resources;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "text":Ljava/lang/String;
    iget-object v3, v1, Lcom/liquable/nemo/forum/ArticleListAdapter$DeletedViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-object p2

    .line 261
    .end local v1    # "deletedViewHolder":Lcom/liquable/nemo/forum/ArticleListAdapter$DeletedViewHolder;
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/forum/ArticleListAdapter$DeletedViewHolder;

    .restart local v1    # "deletedViewHolder":Lcom/liquable/nemo/forum/ArticleListAdapter$DeletedViewHolder;
    goto :goto_0
.end method

.method private getNormalItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    if-nez p2, :cond_0

    .line 226
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ca

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 227
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->createViewHolder()Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/liquable/nemo/forum/ArticleListAdapter;->initViewHolder(Landroid/view/View;Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;)Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;

    move-result-object v0

    .line 228
    .local v0, "viewHolder":Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    :goto_0
    invoke-virtual {p0, p4, v0, p1}, Lcom/liquable/nemo/forum/ArticleListAdapter;->updateNormalView(Landroid/content/Context;Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;I)V

    .line 234
    return-object p2

    .line 230
    .end local v0    # "viewHolder":Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;

    .restart local v0    # "viewHolder":Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    goto :goto_0
.end method

.method private getReportedItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    if-nez p2, :cond_0

    .line 242
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ce

    const/4 v2, 0x0

    .line 243
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 245
    :cond_0
    return-object p2
.end method

.method private hasNewReply(Lcom/liquable/nemo/forum/model/article/Article;)Z
    .locals 4
    .param p1, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->localLastUpdateTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getLastUpdateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->localLastUpdateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->viewedArticle:Ljava/util/List;

    .line 290
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/Article;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/article/Article;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method

.method public addLocalCreateArticle(Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 2
    .param p1, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->markAsViewed(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method protected createViewHolder()Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;

    invoke-direct {v0}, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;-><init>()V

    return-object v0
.end method

.method protected getArticle(I)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/Article;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getArticle(I)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    .line 114
    .local v0, "article":Lcom/liquable/nemo/forum/model/article/Article;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 119
    :goto_0
    return v1

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/Article;->isReported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const/4 v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getLastArticleId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getItemViewType(I)I

    move-result v1

    .line 273
    .local v1, "itemViewType":I
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 275
    .local v0, "context":Landroid/content/Context;
    packed-switch v1, :pswitch_data_0

    .line 283
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getNormalItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    :goto_0
    return-object v2

    .line 277
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getNormalItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 279
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getDeletedItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getReportedItemView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x3

    return v0
.end method

.method protected initViewHolder(Landroid/view/View;Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;)Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;

    .prologue
    const/4 v3, 0x2

    .line 137
    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/volley/toolbox/NetworkImageView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->creatorIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 138
    iget-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->creatorIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    const v1, 0x7f0203f8

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 140
    const v0, 0x7f0801dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->creatorNicknameTextView:Landroid/widget/TextView;

    .line 141
    iget-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->creatorNicknameTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 142
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    .line 141
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 143
    const v0, 0x7f080229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    .line 144
    iget-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 145
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    .line 144
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    const v0, 0x7f080226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->unreadImageView:Landroid/view/View;

    .line 147
    const v0, 0x7f0801e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/volley/toolbox/NetworkImageView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articlePictureImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 148
    const v0, 0x7f08022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articlePictureImageViewContainer:Landroid/view/View;

    .line 149
    const v0, 0x7f080225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->replyCountTextView:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f080223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->likeCountTextView:Landroid/widget/TextView;

    .line 151
    iget-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->replyCountTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 152
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    int-to-float v1, v1

    .line 151
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    iget-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->likeCountTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 154
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    int-to-float v1, v1

    .line 153
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    const v0, 0x7f080227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->lastUpdateTimeTextView:Landroid/widget/TextView;

    .line 156
    iget-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->lastUpdateTimeTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 157
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    int-to-float v1, v1

    .line 156
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    iget-object v0, p2, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articlePictureImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    const v1, 0x7f020507

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 160
    return-object p2
.end method

.method public markAsViewed(Ljava/lang/String;)V
    .locals 1
    .param p1, "articleId"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->viewedArticle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

.method public updateDeletedArticle(Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;)V
    .locals 4
    .param p1, "reportArticleId"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    .prologue
    .line 299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/Article;

    .line 301
    .local v0, "article":Lcom/liquable/nemo/forum/model/article/Article;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Lcom/liquable/nemo/forum/model/article/Article;->withDeleted(ZLcom/liquable/nemo/model/forum/ForumArticleDeleteReason;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    .line 303
    .local v2, "reload":Lcom/liquable/nemo/forum/model/article/Article;
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    .end local v0    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    .end local v2    # "reload":Lcom/liquable/nemo/forum/model/article/Article;
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->notifyDataSetChanged()V

    .line 308
    return-void

    .line 299
    .restart local v0    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateLikeCount(Ljava/lang/String;J)V
    .locals 2
    .param p1, "articleId"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 326
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->likeCountMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->notifyDataSetChanged()V

    .line 328
    return-void
.end method

.method protected updateNormalView(Landroid/content/Context;Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 164
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getArticle(I)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v8

    .line 165
    .local v8, "article":Lcom/liquable/nemo/forum/model/article/Article;
    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/liquable/nemo/friend/model/Account;->createIconRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v12

    .line 167
    .local v12, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->creatorIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    invoke-virtual {v12}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toPublicUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v1, v2, v3}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 169
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->creatorNicknameTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/forum/model/article/IArticleBody;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v9

    .line 173
    .local v9, "articleInfo":Lcom/liquable/nemo/forum/model/article/ArticleInfo;
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->replyCountMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->replyCountMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 175
    .local v10, "expectCount":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->replyCountTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 176
    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getReplyCount()I

    move-result v3

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .end local v10    # "expectCount":Ljava/lang/Integer;
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->likeCountMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->likeCountMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 182
    .local v10, "expectCount":Ljava/lang/Long;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->likeCountTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 183
    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getLikeCount()J

    move-result-wide v4

    .line 182
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .end local v10    # "expectCount":Ljava/lang/Long;
    :goto_1
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->lastUpdateTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getLastUpdateTime()Ljava/util/Date;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/high16 v7, 0x80000

    .line 188
    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    const v2, -0xb6b6b7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v1

    instance-of v1, v1, Lcom/liquable/nemo/forum/model/article/NormalArticle;

    if-eqz v1, :cond_4

    .line 194
    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v11

    check-cast v11, Lcom/liquable/nemo/forum/model/article/NormalArticle;

    .line 195
    .local v11, "normalArticle":Lcom/liquable/nemo/forum/model/article/NormalArticle;
    invoke-virtual {v11}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getPictureUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
    invoke-virtual {v11}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getPictureUrls()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 197
    .local v13, "url":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articlePictureImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v1, v13, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 198
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articlePictureImageViewContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .end local v11    # "normalArticle":Lcom/liquable/nemo/forum/model/article/NormalArticle;
    .end local v13    # "url":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-direct {p0, v8}, Lcom/liquable/nemo/forum/ArticleListAdapter;->hasNewReply(Lcom/liquable/nemo/forum/model/article/Article;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->unreadImageView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :goto_3
    return-void

    .line 178
    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->replyCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getReplyCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 185
    :cond_2
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->likeCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getLikeCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 200
    .restart local v11    # "normalArticle":Lcom/liquable/nemo/forum/model/article/NormalArticle;
    :cond_3
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articlePictureImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    const/4 v2, 0x0

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v1, v2, v3}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 201
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articlePictureImageViewContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 204
    .end local v11    # "normalArticle":Lcom/liquable/nemo/forum/model/article/NormalArticle;
    :cond_4
    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v1

    instance-of v1, v1, Lcom/liquable/nemo/forum/model/article/UnknownArticle;

    if-eqz v1, :cond_0

    .line 205
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    const v2, -0x222223

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->articleTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f0d04ea

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 212
    :cond_5
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;->unreadImageView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public updateReplyCount(Ljava/lang/String;I)V
    .locals 2
    .param p1, "articleId"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->replyCountMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->notifyDataSetChanged()V

    .line 313
    return-void
.end method

.method public updateReportedArticle(Ljava/lang/String;)V
    .locals 3
    .param p1, "reportArticleId"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListAdapter;->articles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/Article;

    .line 317
    .local v0, "article":Lcom/liquable/nemo/forum/model/article/Article;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/model/article/Article;->setReported(Z)V

    .line 322
    .end local v0    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->notifyDataSetChanged()V

    .line 323
    return-void
.end method
