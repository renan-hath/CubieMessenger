.class public Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;
.super Ljava/lang/Object;
.source "HtmlSystemNoticeDto.java"

# interfaces
.implements Lcom/liquable/nemo/notice/ISystemNoticeDto;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x75184b93b675df92L


# instance fields
.field private final htmlContent:Ljava/lang/String;

.field private final publishTime:J

.field private final systemId:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
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
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->title:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->systemId:Ljava/lang/String;

    .line 27
    iput-wide p3, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->publishTime:J

    .line 28
    iput-object p5, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->htmlContent:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 40
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;

    .line 43
    .local v0, "other":Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;
    iget-object v3, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->htmlContent:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 44
    iget-object v3, v0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->htmlContent:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->htmlContent:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->htmlContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->publishTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->publishTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->systemId:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 54
    iget-object v3, v0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->systemId:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->systemId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->systemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->title:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 65
    goto :goto_0
.end method

.method public getHtmlContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->htmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->publishTime:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 94
    const/16 v0, 0x1f

    .line 95
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 96
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->htmlContent:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 97
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->publishTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->publishTime:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 98
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->systemId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 99
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->title:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 100
    return v1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->htmlContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->systemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HtmlSystemNoticeDto [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", publishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->publishTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", htmlContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->htmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
