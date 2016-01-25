.class public Lcom/liquable/nemo/model/group/ChatGroupDto;
.super Ljava/lang/Object;
.source "ChatGroupDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x3c5142b074084251L


# instance fields
.field private final createTime:J

.field private final creatorUid:Ljava/lang/String;

.field private final memberUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final multi:Z

.field private final name:Ljava/lang/String;

.field private final ownerUid:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "creatorUid"    # Ljava/lang/String;
    .param p4, "ownerUid"    # Ljava/lang/String;
    .param p6, "multi"    # Z
    .param p7, "createTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p5, "memberUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->topic:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->name:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->creatorUid:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->ownerUid:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->memberUids:Ljava/util/List;

    .line 32
    iput-boolean p6, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->multi:Z

    .line 33
    iput-wide p7, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->createTime:J

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 45
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/liquable/nemo/model/group/ChatGroupDto;

    .line 48
    .local v0, "other":Lcom/liquable/nemo/model/group/ChatGroupDto;
    iget-wide v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->createTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->createTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->creatorUid:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 52
    iget-object v3, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->creatorUid:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->creatorUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->memberUids:Ljava/util/List;

    if-nez v3, :cond_7

    .line 59
    iget-object v3, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->memberUids:Ljava/util/List;

    if-eqz v3, :cond_8

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->memberUids:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->memberUids:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_8
    iget-boolean v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->multi:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->multi:Z

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->name:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 69
    iget-object v3, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->name:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->ownerUid:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 76
    iget-object v3, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->ownerUid:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->ownerUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->ownerUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->topic:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 83
    iget-object v3, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->topic:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 84
    goto/16 :goto_0

    .line 86
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->topic:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/group/ChatGroupDto;->topic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 87
    goto/16 :goto_0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->createTime:J

    return-wide v0
.end method

.method public getCreatorUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->creatorUid:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberUids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->memberUids:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->ownerUid:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 118
    const/16 v0, 0x1f

    .line 119
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 120
    .local v1, "result":I
    iget-wide v4, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->createTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->createTime:J

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit8 v1, v2, 0x1f

    .line 121
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->creatorUid:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 122
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->memberUids:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 123
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->multi:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    :goto_2
    add-int v1, v4, v2

    .line 124
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 125
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->ownerUid:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 126
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->topic:Ljava/lang/String;

    if-nez v4, :cond_5

    :goto_5
    add-int v1, v2, v3

    .line 127
    return v1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->memberUids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    .line 123
    :cond_2
    const/16 v2, 0x4d5

    goto :goto_2

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->ownerUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 126
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->topic:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public isMulti()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->multi:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChatGroupDto [topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->ownerUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", multi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->multi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", memberUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->memberUids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/group/ChatGroupDto;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
