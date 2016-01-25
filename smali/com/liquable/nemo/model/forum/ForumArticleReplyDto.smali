.class public Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
.super Ljava/lang/Object;
.source "ForumArticleReplyDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4218498b2dcbd5c2L


# instance fields
.field private final createTime:J

.field private final creatorUid:Ljava/lang/String;

.field private final data:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final likeCount:J

.field private final localId:Ljava/lang/String;

.field private final nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "id"
        .end annotation
    .end param
    .param p2, "creatorUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "creatorUid"
        .end annotation
    .end param
    .param p3, "nickname"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "nickname"
        .end annotation
    .end param
    .param p4, "createTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "createTime"
        .end annotation
    .end param
    .param p6, "data"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "data"
        .end annotation
    .end param
    .param p7, "localId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "localId"
        .end annotation
    .end param
    .param p8, "likeCount"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "likeCount"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->id:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->creatorUid:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->nickname:Ljava/lang/String;

    .line 38
    iput-wide p4, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->createTime:J

    .line 39
    iput-object p6, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->data:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->localId:Ljava/lang/String;

    .line 41
    iput-wide p8, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->likeCount:J

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 78
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    .line 83
    .local v0, "that":Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->createTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->createTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 84
    goto :goto_0

    .line 86
    :cond_4
    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->likeCount:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->likeCount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->creatorUid:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->creatorUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 90
    goto :goto_0

    .line 89
    :cond_7
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->creatorUid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 92
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->data:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->data:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 93
    goto :goto_0

    .line 92
    :cond_a
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->data:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 95
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->id:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 96
    goto :goto_0

    .line 95
    :cond_d
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->id:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 98
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->localId:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->localId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->localId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    .line 99
    goto :goto_0

    .line 98
    :cond_10
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->localId:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 101
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->nickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 102
    goto/16 :goto_0

    .line 101
    :cond_12
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->createTime:J

    return-wide v0
.end method

.method public getCreatorUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->creatorUid:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->likeCount:J

    return-wide v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 111
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->creatorUid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 112
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->nickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->createTime:J

    iget-wide v5, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->createTime:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 114
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 115
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->localId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->localId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 116
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->likeCount:J

    iget-wide v4, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->likeCount:J

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 117
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 110
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 111
    goto :goto_1

    :cond_3
    move v2, v1

    .line 112
    goto :goto_2

    :cond_4
    move v2, v1

    .line 114
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ForumArticleReplyDto{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", localId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->localId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", likeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->likeCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
