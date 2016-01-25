.class public Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;
.super Ljava/lang/Object;
.source "ArtworkReplyDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0xd49392d56ad48eaL


# instance fields
.field private final artworkId:Ljava/lang/String;

.field private final content:Ljava/lang/String;

.field private final deleted:Z

.field private final editTime:Ljava/lang/Long;

.field private final id:Ljava/lang/String;

.field private final nickname:Ljava/lang/String;

.field private final replyTime:J

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Z)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "artworkId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "replyTime"    # J
    .param p7, "content"    # Ljava/lang/String;
    .param p8, "editTime"    # Ljava/lang/Long;
    .param p9, "deleted"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->id:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->artworkId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->uid:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->nickname:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->content:Ljava/lang/String;

    .line 44
    iput-wide p5, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->replyTime:J

    .line 45
    iput-boolean p9, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->deleted:Z

    .line 46
    iput-object p8, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->editTime:Ljava/lang/Long;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 58
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;

    .line 61
    .local v0, "other":Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->artworkId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 62
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->artworkId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->artworkId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->artworkId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->content:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 69
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->content:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_7
    iget-boolean v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->deleted:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->deleted:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->editTime:Ljava/lang/Long;

    if-nez v3, :cond_9

    .line 79
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->editTime:Ljava/lang/Long;

    if-eqz v3, :cond_a

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->editTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->editTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->id:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 86
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->id:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->nickname:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 93
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_e

    move v1, v2

    .line 94
    goto :goto_0

    .line 96
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->nickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    .line 97
    goto/16 :goto_0

    .line 99
    :cond_e
    iget-wide v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->replyTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->replyTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f

    move v1, v2

    .line 100
    goto/16 :goto_0

    .line 102
    :cond_f
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->uid:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 103
    iget-object v3, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 104
    goto/16 :goto_0

    .line 106
    :cond_10
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 107
    goto/16 :goto_0
.end method

.method public getArtworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->artworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEditTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->editTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTime()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->replyTime:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 142
    const/16 v0, 0x1f

    .line 143
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 144
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->artworkId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 145
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->content:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 146
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->deleted:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    :goto_2
    add-int v1, v4, v2

    .line 147
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->editTime:Ljava/lang/Long;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 148
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 149
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->nickname:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 150
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->replyTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->replyTime:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 151
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->uid:Ljava/lang/String;

    if-nez v4, :cond_6

    :goto_6
    add-int v1, v2, v3

    .line 152
    return v1

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->artworkId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 146
    :cond_2
    const/16 v2, 0x4d5

    goto :goto_2

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->editTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_3

    .line 148
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->nickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 151
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->deleted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ArtworkReplyDto [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", artworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->artworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", replyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->replyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", editTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/artwork/ArtworkReplyDto;->editTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
