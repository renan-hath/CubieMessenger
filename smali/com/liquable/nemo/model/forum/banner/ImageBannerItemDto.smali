.class public Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;
.super Ljava/lang/Object;
.source "ImageBannerItemDto.java"

# interfaces
.implements Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;


# static fields
.field private static final serialVersionUID:J = 0x1fc29b9c7d2a2a74L


# instance fields
.field private final androidClickUrl:Ljava/lang/String;

.field private final forumBoardBannerId:Ljava/lang/String;

.field private final iPadClickUrl:Ljava/lang/String;

.field private final iPhoneClickUrl:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "forumBoardBannerId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "forumBoardBannerId"
        .end annotation
    .end param
    .param p2, "androidClickUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "androidClickUrl"
        .end annotation
    .end param
    .param p3, "iPhoneClickUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPhoneClickUrl"
        .end annotation
    .end param
    .param p4, "iPadClickUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPadClickUrl"
        .end annotation
    .end param
    .param p5, "imageUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "imageUrl"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->androidClickUrl:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->imageUrl:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 42
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;

    .line 45
    .local v0, "other":Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->androidClickUrl:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 46
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->androidClickUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 47
    goto :goto_0

    .line 49
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->androidClickUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->androidClickUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 53
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 60
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 61
    goto :goto_0

    .line 63
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 67
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->imageUrl:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 74
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->imageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 78
    goto/16 :goto_0
.end method

.method public getAndroidClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->androidClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getForumBoardBannerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getiPadClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getiPhoneClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 109
    const/16 v0, 0x1f

    .line 110
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 111
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->androidClickUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 112
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 113
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 114
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 115
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->imageUrl:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    .line 116
    return v1

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->androidClickUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 115
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImageBannerItemDto [androidClickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->androidClickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPhoneClickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPadClickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", forumBoardBannerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
