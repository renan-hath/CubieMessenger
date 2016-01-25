.class public Lcom/liquable/nemo/forum/model/article/Article;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7f361a25d14b8d11L


# instance fields
.field private final articleBody:Lcom/liquable/nemo/forum/model/article/IArticleBody;

.field private final articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

.field private reported:Z


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/forum/model/article/ArticleInfo;Lcom/liquable/nemo/forum/model/article/IArticleBody;Z)V
    .locals 0
    .param p1, "articleInfo"    # Lcom/liquable/nemo/forum/model/article/ArticleInfo;
    .param p2, "articleBody"    # Lcom/liquable/nemo/forum/model/article/IArticleBody;
    .param p3, "reported"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    .line 19
    iput-object p2, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleBody:Lcom/liquable/nemo/forum/model/article/IArticleBody;

    .line 20
    iput-boolean p3, p0, Lcom/liquable/nemo/forum/model/article/Article;->reported:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleBody:Lcom/liquable/nemo/forum/model/article/IArticleBody;

    return-object v0
.end method

.method public getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    return-object v0
.end method

.method public isReported()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/liquable/nemo/forum/model/article/Article;->reported:Z

    return v0
.end method

.method public setReported(Z)V
    .locals 0
    .param p1, "reported"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/liquable/nemo/forum/model/article/Article;->reported:Z

    .line 37
    return-void
.end method

.method public withDeleted(ZLcom/liquable/nemo/model/forum/ForumArticleDeleteReason;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 12
    .param p1, "deleted"    # Z
    .param p2, "reason"    # Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    .prologue
    .line 40
    new-instance v11, Lcom/liquable/nemo/forum/model/article/Article;

    new-instance v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    .line 41
    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    .line 42
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorNickname()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    .line 43
    invoke-virtual {v4}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreateTime()Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    .line 44
    invoke-virtual {v5}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getLastUpdateTime()Ljava/util/Date;

    move-result-object v5

    .line 46
    invoke-virtual {p2}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    .line 47
    invoke-virtual {v6}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getReplyCount()I

    move-result v8

    iget-object v6, p0, Lcom/liquable/nemo/forum/model/article/Article;->articleInfo:Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    .line 48
    invoke-virtual {v6}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getLikeCount()J

    move-result-wide v9

    move v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/String;IJ)V

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v1

    iget-boolean v2, p0, Lcom/liquable/nemo/forum/model/article/Article;->reported:Z

    invoke-direct {v11, v0, v1, v2}, Lcom/liquable/nemo/forum/model/article/Article;-><init>(Lcom/liquable/nemo/forum/model/article/ArticleInfo;Lcom/liquable/nemo/forum/model/article/IArticleBody;Z)V

    return-object v11
.end method
