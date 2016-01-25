.class public Lcom/liquable/nemo/model/forum/ForumArticleDto;
.super Ljava/lang/Object;
.source "ForumArticleDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74c56472dbd72388L


# instance fields
.field private final createTime:J

.field private final creatorUid:Ljava/lang/String;

.field private final data:Ljava/lang/String;

.field private final deleted:Z

.field private final deletedReason:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

.field private final lastUpdateTime:J

.field private final likeCount:J

.field private final nickname:Ljava/lang/String;

.field private final replyCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/liquable/nemo/model/forum/ForumArticleReplyDto;Ljava/lang/String;ILjava/lang/String;J)V
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
    .param p6, "lastUpdateTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "lastUpdateTime"
        .end annotation
    .end param
    .param p8, "deleted"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "deleted"
        .end annotation
    .end param
    .param p9, "lastReply"    # Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "lastReply"
        .end annotation
    .end param
    .param p10, "data"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "data"
        .end annotation
    .end param
    .param p11, "replyCount"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "replyCount"
        .end annotation
    .end param
    .param p12, "deletedReason"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "deletedReason"
        .end annotation
    .end param
    .param p13, "likeCount"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "likeCount"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->id:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->creatorUid:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->nickname:Ljava/lang/String;

    .line 44
    iput-wide p4, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->createTime:J

    .line 45
    iput-wide p6, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastUpdateTime:J

    .line 46
    iput-boolean p8, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deleted:Z

    .line 47
    iput-object p9, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    .line 48
    iput-object p10, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->data:Ljava/lang/String;

    .line 49
    iput p11, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->replyCount:I

    .line 50
    iput-object p12, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deletedReason:Ljava/lang/String;

    .line 51
    iput-wide p13, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->likeCount:J

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 104
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .line 109
    .local v0, "that":Lcom/liquable/nemo/model/forum/ForumArticleDto;
    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->createTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->createTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    iget-boolean v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deleted:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deleted:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastUpdateTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastUpdateTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 116
    goto :goto_0

    .line 118
    :cond_6
    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->likeCount:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->likeCount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_7
    iget v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->replyCount:I

    iget v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->replyCount:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->creatorUid:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->creatorUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 125
    goto :goto_0

    .line 124
    :cond_a
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->creatorUid:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 127
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->data:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->data:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 128
    goto :goto_0

    .line 127
    :cond_d
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->data:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 130
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deletedReason:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deletedReason:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deletedReason:Ljava/lang/String;

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    .line 133
    goto :goto_0

    .line 131
    :cond_10
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deletedReason:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 135
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->id:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move v1, v2

    .line 136
    goto/16 :goto_0

    .line 135
    :cond_13
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->id:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 138
    :cond_14
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    move v1, v2

    .line 139
    goto/16 :goto_0

    .line 138
    :cond_16
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    if-nez v3, :cond_15

    .line 141
    :cond_17
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->nickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 142
    goto/16 :goto_0

    .line 141
    :cond_18
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->createTime:J

    return-wide v0
.end method

.method public getCreatorUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->creatorUid:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDeletedReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deletedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastReply()Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastUpdateTime:J

    return-wide v0
.end method

.method public getLikeCount()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->likeCount:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->replyCount:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 151
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->creatorUid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 152
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->nickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 153
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->createTime:J

    iget-wide v5, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->createTime:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 154
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastUpdateTime:J

    iget-wide v5, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastUpdateTime:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 155
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deleted:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    add-int v0, v3, v2

    .line 156
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deletedReason:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deletedReason:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 157
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 158
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->data:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->replyCount:I

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->likeCount:J

    iget-wide v4, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->likeCount:J

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 161
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 150
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 151
    goto :goto_1

    :cond_3
    move v2, v1

    .line 152
    goto :goto_2

    :cond_4
    move v2, v1

    .line 155
    goto :goto_3

    :cond_5
    move v2, v1

    .line 156
    goto :goto_4

    :cond_6
    move v2, v1

    .line 157
    goto :goto_5
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deleted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ForumArticleDto{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deletedReason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->deletedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastReply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->lastReply:Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", replyCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->replyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", likeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/forum/ForumArticleDto;->likeCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
