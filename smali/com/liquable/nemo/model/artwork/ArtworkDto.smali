.class public Lcom/liquable/nemo/model/artwork/ArtworkDto;
.super Ljava/lang/Object;
.source "ArtworkDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = 0x7dd6e0c5181b6ab0L


# instance fields
.field private final comment:Ljava/lang/String;

.field private final createTime:J

.field private final id:Ljava/lang/String;

.field private final keyPath:Ljava/lang/String;

.field private final like:I

.field private final nickname:Ljava/lang/String;

.field private final recentReplies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;",
            ">;"
        }
    .end annotation
.end field

.field private final reply:I

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/util/List;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "createTime"    # J
    .param p7, "keyPath"    # Ljava/lang/String;
    .param p8, "like"    # I
    .param p9, "reply"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p10, "recentReplies":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->uid:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->nickname:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->comment:Ljava/lang/String;

    .line 47
    iput-wide p5, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->createTime:J

    .line 48
    iput-object p7, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->keyPath:Ljava/lang/String;

    .line 49
    iput p8, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->like:I

    .line 50
    iput p9, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->reply:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->recentReplies:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 63
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;

    .line 66
    .local v0, "other":Lcom/liquable/nemo/model/artwork/ArtworkDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->comment:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 67
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->comment:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->comment:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->comment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->createTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->createTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->id:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 77
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->id:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->keyPath:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 84
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->keyPath:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->keyPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->keyPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_a
    iget v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->like:I

    iget v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->like:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->nickname:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 94
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->nickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->recentReplies:Ljava/util/List;

    if-nez v3, :cond_e

    .line 101
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->recentReplies:Ljava/util/List;

    if-eqz v3, :cond_f

    move v1, v2

    .line 102
    goto/16 :goto_0

    .line 104
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->recentReplies:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->recentReplies:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 105
    goto/16 :goto_0

    .line 107
    :cond_f
    iget v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->reply:I

    iget v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->reply:I

    if-eq v3, v4, :cond_10

    move v1, v2

    .line 108
    goto/16 :goto_0

    .line 110
    :cond_10
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->uid:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 111
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 112
    goto/16 :goto_0

    .line 114
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 115
    goto/16 :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->createTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->keyPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLike()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->like:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentReplies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->recentReplies:Ljava/util/List;

    return-object v0
.end method

.method public getReply()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->reply:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 158
    const/16 v0, 0x1f

    .line 159
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 160
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->comment:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 161
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->createTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->createTime:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 162
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->id:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 163
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->keyPath:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 164
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->like:I

    add-int v1, v2, v4

    .line 165
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->nickname:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 166
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->recentReplies:Ljava/util/List;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 167
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->reply:I

    add-int v1, v2, v4

    .line 168
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->uid:Ljava/lang/String;

    if-nez v4, :cond_5

    :goto_5
    add-int v1, v2, v3

    .line 169
    return v1

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->keyPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->nickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 166
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->recentReplies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_4

    .line 168
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ArtworkDto [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->keyPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", like="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->like:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->reply:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recentReplies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkDto;->recentReplies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
