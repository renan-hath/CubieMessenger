.class public Lcom/liquable/nemo/forum/ArticleReplyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArticleReplyListAdapter.java"


# static fields
.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3


# instance fields
.field private final myNewReplies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/ArticleReply;",
            ">;"
        }
    .end annotation
.end field

.field private final replies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/ArticleReply;",
            ">;"
        }
    .end annotation
.end field

.field private final viewTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->viewTypes:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->myNewReplies:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public addLocalReply(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
    .locals 1
    .param p1, "articleReply"    # Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->myNewReplies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public addRemoteReplies(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/ArticleReply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/article/ArticleReply;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->myNewReplies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->myNewReplies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->myNewReplies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/forum/model/article/ArticleReply;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/ArticleReply;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->getItem(I)Lcom/liquable/nemo/forum/model/article/ArticleReply;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->getItem(I)Lcom/liquable/nemo/forum/model/article/ArticleReply;

    move-result-object v1

    .line 68
    .local v1, "reply":Lcom/liquable/nemo/forum/model/article/ArticleReply;
    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyBody()Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    move-result-object v0

    .line 69
    .local v0, "body":Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->viewTypes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->viewTypes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->viewTypes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public getLastReplyId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v2

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 81
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->replies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .line 82
    .local v1, "target":Lcom/liquable/nemo/forum/model/article/ArticleReply;
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->myNewReplies:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyInfo()Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 80
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->getItem(I)Lcom/liquable/nemo/forum/model/article/ArticleReply;

    move-result-object v2

    .line 92
    .local v2, "reply":Lcom/liquable/nemo/forum/model/article/ArticleReply;
    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyBody()Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    move-result-object v1

    .line 95
    .local v1, "body":Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;
    if-nez p2, :cond_2

    .line 96
    instance-of v3, v1, Lcom/liquable/nemo/forum/model/article/TextReply;

    if-eqz v3, :cond_0

    .line 97
    new-instance v0, Lcom/liquable/nemo/forum/view/TextReplyView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/liquable/nemo/forum/view/TextReplyView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "articleReplyView":Lcom/liquable/nemo/forum/view/ArticleReplyView;
    :goto_0
    invoke-virtual {v0, v2}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->update(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V

    .line 107
    return-object v0

    .line 98
    .end local v0    # "articleReplyView":Lcom/liquable/nemo/forum/view/ArticleReplyView;
    :cond_0
    instance-of v3, v1, Lcom/liquable/nemo/forum/model/article/PictureReply;

    if-eqz v3, :cond_1

    .line 99
    new-instance v0, Lcom/liquable/nemo/forum/view/PictureReplyView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/liquable/nemo/forum/view/PictureReplyView;-><init>(Landroid/content/Context;)V

    .restart local v0    # "articleReplyView":Lcom/liquable/nemo/forum/view/ArticleReplyView;
    goto :goto_0

    .line 101
    .end local v0    # "articleReplyView":Lcom/liquable/nemo/forum/view/ArticleReplyView;
    :cond_1
    new-instance v0, Lcom/liquable/nemo/forum/view/UnknownReplyView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/liquable/nemo/forum/view/UnknownReplyView;-><init>(Landroid/content/Context;)V

    .restart local v0    # "articleReplyView":Lcom/liquable/nemo/forum/view/ArticleReplyView;
    goto :goto_0

    .end local v0    # "articleReplyView":Lcom/liquable/nemo/forum/view/ArticleReplyView;
    :cond_2
    move-object v0, p2

    .line 104
    check-cast v0, Lcom/liquable/nemo/forum/view/ArticleReplyView;

    .restart local v0    # "articleReplyView":Lcom/liquable/nemo/forum/view/ArticleReplyView;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x3

    return v0
.end method
