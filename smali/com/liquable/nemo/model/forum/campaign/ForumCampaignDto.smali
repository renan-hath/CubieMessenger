.class public Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;
.super Ljava/lang/Object;
.source "ForumCampaignDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# instance fields
.field private final boardCategory:Ljava/lang/String;

.field private final clientPlatform:Ljava/lang/String;

.field private final content:Ljava/lang/String;

.field private final createTime:J

.field private final forumCampaignId:Ljava/lang/String;

.field private final forumCountry:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final published:Z

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "forumCampaignId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "boardCategory"    # Ljava/lang/String;
    .param p6, "forumCountry"    # Ljava/lang/String;
    .param p7, "clientPlatform"    # Ljava/lang/String;
    .param p8, "published"    # Z
    .param p9, "createTime"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCampaignId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->content:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->url:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->imageUrl:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->boardCategory:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCountry:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->clientPlatform:Ljava/lang/String;

    .line 33
    iput-boolean p8, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->published:Z

    .line 34
    iput-wide p9, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->createTime:J

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-ne p0, p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 75
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;

    .line 80
    .local v0, "that":Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;
    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->createTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->createTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_4
    iget-boolean v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->published:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->published:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 84
    goto :goto_0

    .line 86
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->boardCategory:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->boardCategory:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->boardCategory:Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 89
    goto :goto_0

    .line 87
    :cond_7
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->boardCategory:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 91
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->clientPlatform:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->clientPlatform:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->clientPlatform:Ljava/lang/String;

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 94
    goto :goto_0

    .line 92
    :cond_a
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->clientPlatform:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 96
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->content:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 97
    goto :goto_0

    .line 96
    :cond_d
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->content:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 99
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCampaignId:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCampaignId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCampaignId:Ljava/lang/String;

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    .line 102
    goto :goto_0

    .line 100
    :cond_10
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCampaignId:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 104
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCountry:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCountry:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCountry:Ljava/lang/String;

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move v1, v2

    .line 107
    goto/16 :goto_0

    .line 105
    :cond_13
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCountry:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 109
    :cond_14
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->imageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    move v1, v2

    .line 110
    goto/16 :goto_0

    .line 109
    :cond_16
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->imageUrl:Ljava/lang/String;

    if-nez v3, :cond_15

    .line 112
    :cond_17
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->url:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 113
    goto/16 :goto_0

    .line 112
    :cond_18
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->url:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getBoardCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->boardCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->clientPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->createTime:J

    return-wide v0
.end method

.method public getForumCampaignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getForumCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCampaignId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCampaignId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 122
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->content:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 123
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 124
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 125
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->boardCategory:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->boardCategory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 126
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCountry:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCountry:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 127
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->clientPlatform:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->clientPlatform:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 128
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->published:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int v0, v2, v1

    .line 129
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->createTime:J

    iget-wide v4, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->createTime:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 130
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 121
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 122
    goto :goto_1

    :cond_3
    move v2, v1

    .line 123
    goto :goto_2

    :cond_4
    move v2, v1

    .line 124
    goto :goto_3

    :cond_5
    move v2, v1

    .line 125
    goto :goto_4

    :cond_6
    move v2, v1

    .line 126
    goto :goto_5

    :cond_7
    move v2, v1

    .line 127
    goto :goto_6
.end method

.method public isPublished()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->published:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ForumCampaignDto{forumCampaignId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCampaignId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", boardCategory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->boardCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", forumCountry=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->forumCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clientPlatform=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->clientPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", published="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->published:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/forum/campaign/ForumCampaignDto;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
