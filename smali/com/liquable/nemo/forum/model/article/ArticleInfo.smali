.class public Lcom/liquable/nemo/forum/model/article/ArticleInfo;
.super Ljava/lang/Object;
.source "ArticleInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x33e1ea39bcb2af95L


# instance fields
.field private final articleId:Ljava/lang/String;

.field private final createTime:Ljava/util/Date;

.field private final creatorNickname:Ljava/lang/String;

.field private final creatorUid:Ljava/lang/String;

.field private final deleted:Z

.field private deletedReason:Ljava/lang/String;

.field private final lastUpdateTime:Ljava/util/Date;

.field private final likeCount:J

.field private final replyCount:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/forum/ForumArticleDto;)V
    .locals 11
    .param p1, "forumArticleDto"    # Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getId()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getCreatorUid()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getNickname()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    .line 32
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getCreateTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/Date;

    .line 33
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getLastUpdateTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 34
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->isDeleted()Z

    move-result v6

    .line 35
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getDeletedReason()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getReplyCount()I

    move-result v8

    .line 37
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getLikeCount()J

    move-result-wide v9

    move-object v0, p0

    .line 29
    invoke-direct/range {v0 .. v10}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/String;IJ)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZLjava/lang/String;IJ)V
    .locals 0
    .param p1, "articleId"    # Ljava/lang/String;
    .param p2, "creatorUid"    # Ljava/lang/String;
    .param p3, "creatorNickname"    # Ljava/lang/String;
    .param p4, "createTime"    # Ljava/util/Date;
    .param p5, "lastUpdateTime"    # Ljava/util/Date;
    .param p6, "deleted"    # Z
    .param p7, "deletedReason"    # Ljava/lang/String;
    .param p8, "replyCount"    # I
    .param p9, "likeCount"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->articleId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorUid:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorNickname:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->createTime:Ljava/util/Date;

    .line 53
    iput-object p5, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->lastUpdateTime:Ljava/util/Date;

    .line 54
    iput-boolean p6, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deleted:Z

    .line 55
    iput-object p7, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deletedReason:Ljava/lang/String;

    .line 56
    iput p8, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->replyCount:I

    .line 57
    iput-wide p9, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->likeCount:J

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-ne p0, p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 98
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 101
    check-cast v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    .line 103
    .local v0, "that":Lcom/liquable/nemo/forum/model/article/ArticleInfo;
    iget-boolean v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deleted:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deleted:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 104
    goto :goto_0

    .line 106
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->replyCount:I

    iget v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->replyCount:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->likeCount:J

    iget-wide v5, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->likeCount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 110
    goto :goto_0

    .line 112
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->articleId:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->articleId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->articleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 113
    goto :goto_0

    .line 112
    :cond_8
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->articleId:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 115
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->createTime:Ljava/util/Date;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->createTime:Ljava/util/Date;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->createTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    .line 116
    goto :goto_0

    .line 115
    :cond_b
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->createTime:Ljava/util/Date;

    if-nez v3, :cond_a

    .line 118
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorNickname:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorNickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorNickname:Ljava/lang/String;

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    .line 121
    goto :goto_0

    .line 119
    :cond_e
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorNickname:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 123
    :cond_f
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorUid:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    .line 124
    goto :goto_0

    .line 123
    :cond_11
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorUid:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 126
    :cond_12
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deletedReason:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deletedReason:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deletedReason:Ljava/lang/String;

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    .line 129
    goto/16 :goto_0

    .line 127
    :cond_14
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deletedReason:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 131
    :cond_15
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->lastUpdateTime:Ljava/util/Date;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->lastUpdateTime:Ljava/util/Date;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->lastUpdateTime:Ljava/util/Date;

    .line 132
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 134
    goto/16 :goto_0

    .line 132
    :cond_16
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->lastUpdateTime:Ljava/util/Date;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatorNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorUid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeletedReason()Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deletedReason:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->tryParse(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->lastUpdateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLikeCount()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->likeCount:J

    return-wide v0
.end method

.method public getReplyCount()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->replyCount:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->articleId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->articleId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 158
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorUid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 159
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorNickname:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorNickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 160
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->createTime:Ljava/util/Date;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->createTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 161
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->lastUpdateTime:Ljava/util/Date;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->lastUpdateTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 162
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deletedReason:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deletedReason:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 163
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->replyCount:I

    add-int v0, v2, v3

    .line 164
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->likeCount:J

    iget-wide v5, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->likeCount:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 165
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deleted:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int v0, v2, v1

    .line 166
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 157
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 158
    goto :goto_1

    :cond_3
    move v2, v1

    .line 159
    goto :goto_2

    :cond_4
    move v2, v1

    .line 160
    goto :goto_3

    :cond_5
    move v2, v1

    .line 161
    goto :goto_4

    :cond_6
    move v2, v1

    .line 162
    goto :goto_5
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deleted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ArticleInfo{articleId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->articleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorNickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->creatorNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->createTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->lastUpdateTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deletedReason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deletedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", replyCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->replyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", likeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->likeCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
