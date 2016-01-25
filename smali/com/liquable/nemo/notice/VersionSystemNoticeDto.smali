.class public Lcom/liquable/nemo/notice/VersionSystemNoticeDto;
.super Ljava/lang/Object;
.source "VersionSystemNoticeDto.java"

# interfaces
.implements Lcom/liquable/nemo/notice/ISystemNoticeDto;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x38b3843d719a99d3L


# instance fields
.field private final htmlContent:Ljava/lang/String;

.field private final important:Z

.field private final nemoVersion:Ljava/lang/String;

.field private final publishTime:J

.field private final systemId:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p2, "systemId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "systemId"
        .end annotation
    .end param
    .param p3, "publishTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "publishTime"
        .end annotation
    .end param
    .param p5, "htmlContent"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "htmlContent"
        .end annotation
    .end param
    .param p6, "nemoVersion"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "nemoVersion"
        .end annotation
    .end param
    .param p7, "important"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "important"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->title:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->systemId:Ljava/lang/String;

    .line 33
    iput-wide p3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->publishTime:J

    .line 34
    iput-object p5, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->htmlContent:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->nemoVersion:Ljava/lang/String;

    .line 36
    iput-boolean p7, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->important:Z

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 48
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;

    .line 51
    .local v0, "other":Lcom/liquable/nemo/notice/VersionSystemNoticeDto;
    iget-object v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->htmlContent:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 52
    iget-object v3, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->htmlContent:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->htmlContent:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->htmlContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_5
    iget-boolean v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->important:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->important:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->nemoVersion:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 62
    iget-object v3, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->nemoVersion:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->nemoVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->nemoVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_8
    iget-wide v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->publishTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->publishTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->systemId:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 72
    iget-object v3, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->systemId:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->systemId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->systemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->title:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 79
    iget-object v3, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 83
    goto :goto_0
.end method

.method public getHtmlContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->htmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNemoVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->nemoVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->publishTime:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 117
    const/16 v0, 0x1f

    .line 118
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 119
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->htmlContent:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 120
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->important:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    :goto_1
    add-int v1, v4, v2

    .line 121
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->nemoVersion:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 122
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->publishTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->publishTime:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 123
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->systemId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 124
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->title:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    .line 125
    return v1

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->htmlContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 120
    :cond_1
    const/16 v2, 0x4d5

    goto :goto_1

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->nemoVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->systemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 124
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public isImportant()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->important:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VersionSystemNoticeDto [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", publishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->publishTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", htmlContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->htmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nemoVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->nemoVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", important="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->important:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
