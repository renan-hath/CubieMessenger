.class public Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;
.super Ljava/lang/Object;
.source "ArticleReplyInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x547848c45d2055a8L


# instance fields
.field private final createTime:Ljava/util/Date;

.field private final creatorNickname:Ljava/lang/String;

.field private final creatorUid:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final localId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;)V
    .locals 7
    .param p1, "articleReplyDto"    # Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->getId()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->getCreatorUid()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->getNickname()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    .line 25
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->getCreateTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 26
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->getLocalId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "creatorUid"    # Ljava/lang/String;
    .param p3, "creatorNickname"    # Ljava/lang/String;
    .param p4, "createTime"    # Ljava/util/Date;
    .param p5, "localId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->creatorUid:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->creatorNickname:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->createTime:Ljava/util/Date;

    .line 38
    iput-object p5, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->localId:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 50
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    .line 53
    .local v0, "other":Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 54
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 58
    goto :goto_0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatorNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->creatorNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->creatorUid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 85
    const/16 v0, 0x1f

    .line 86
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 87
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->id:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 88
    return v1

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ArticleReplyInfo [creatorUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->creatorUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->creatorNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->createTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", localId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->localId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
