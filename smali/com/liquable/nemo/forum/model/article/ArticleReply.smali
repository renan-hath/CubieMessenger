.class public Lcom/liquable/nemo/forum/model/article/ArticleReply;
.super Ljava/lang/Object;
.source "ArticleReply.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x448610a4fa6cf742L


# instance fields
.field private final articleReplyBody:Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

.field private final articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;)V
    .locals 0
    .param p1, "articleReplyInfo"    # Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;
    .param p2, "articleReplyBody"    # Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    .line 17
    iput-object p2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyBody:Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    if-ne p0, p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 29
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .line 32
    .local v0, "other":Lcom/liquable/nemo/forum/model/article/ArticleReply;
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    if-nez v3, :cond_4

    .line 33
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    if-eqz v3, :cond_0

    move v1, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 37
    goto :goto_0
.end method

.method public getArticleReplyBody()Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyBody:Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    return-object v0
.end method

.method public getArticleReplyInfo()Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x1f

    .line 53
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 54
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 55
    return v1

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ArticleReply [articleReplyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyInfo:Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", articleReplyBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReply;->articleReplyBody:Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
