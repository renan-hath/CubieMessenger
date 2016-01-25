.class public Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;
.super Ljava/lang/Object;
.source "ButtonBannerItemDto.java"

# interfaces
.implements Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;


# static fields
.field private static final serialVersionUID:J = 0x2a6ddebcd09e2b41L


# instance fields
.field private final androidClickUrl:Ljava/lang/String;

.field private final forumBoardBannerId:Ljava/lang/String;

.field private final iPadClickUrl:Ljava/lang/String;

.field private final iPhoneClickUrl:Ljava/lang/String;

.field private final iconUrl:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .param p5, "iconUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iconUrl"
        .end annotation
    .end param
    .param p6, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->androidClickUrl:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iconUrl:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->title:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 46
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;

    .line 49
    .local v0, "other":Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->androidClickUrl:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 50
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->androidClickUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->androidClickUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->androidClickUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 57
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 61
    goto :goto_0

    .line 63
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 64
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 71
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iconUrl:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 78
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iconUrl:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iconUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 82
    goto/16 :goto_0

    .line 84
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->title:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 85
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 86
    goto/16 :goto_0

    .line 88
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 89
    goto/16 :goto_0
.end method

.method public getAndroidClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->androidClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getForumBoardBannerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getiPadClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getiPhoneClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 124
    const/16 v0, 0x1f

    .line 125
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 126
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->androidClickUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 127
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 128
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 129
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 130
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iconUrl:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 131
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->title:Ljava/lang/String;

    if-nez v4, :cond_5

    :goto_5
    add-int v1, v2, v3

    .line 132
    return v1

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->androidClickUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 131
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ButtonBannerItemDto [androidClickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->androidClickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPhoneClickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPhoneClickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPadClickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iPadClickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", forumBoardBannerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->forumBoardBannerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
