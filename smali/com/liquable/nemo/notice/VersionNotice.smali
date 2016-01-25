.class public Lcom/liquable/nemo/notice/VersionNotice;
.super Lcom/liquable/nemo/notice/BaseSystemNotice;
.source "VersionNotice.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# instance fields
.field private final htmlContent:Ljava/lang/String;

.field private final important:Z

.field private final nemoVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V
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
    .param p3, "noticeTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "noticeTime"
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
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/notice/BaseSystemNotice;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 45
    iput-object p5, p0, Lcom/liquable/nemo/notice/VersionNotice;->htmlContent:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/liquable/nemo/notice/VersionNotice;->nemoVersion:Ljava/lang/String;

    .line 47
    iput-boolean p7, p0, Lcom/liquable/nemo/notice/VersionNotice;->important:Z

    .line 48
    return-void
.end method

.method public static create(Lcom/liquable/nemo/notice/VersionSystemNoticeDto;)Lcom/liquable/nemo/notice/VersionNotice;
    .locals 7
    .param p0, "dto"    # Lcom/liquable/nemo/notice/VersionSystemNoticeDto;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->getPublishTime()J

    move-result-wide v2

    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->getHtmlContent()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->getNemoVersion()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/VersionSystemNoticeDto;->isImportant()Z

    move-result v6

    .line 23
    invoke-static/range {v0 .. v6}, Lcom/liquable/nemo/notice/VersionNotice;->create(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)Lcom/liquable/nemo/notice/VersionNotice;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)Lcom/liquable/nemo/notice/VersionNotice;
    .locals 8
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "noticeTime"    # J
    .param p4, "htmlContent"    # Ljava/lang/String;
    .param p5, "nemoVersion"    # Ljava/lang/String;
    .param p6, "important"    # Z

    .prologue
    .line 19
    new-instance v0, Lcom/liquable/nemo/notice/VersionNotice;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/notice/VersionNotice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public getHtmlContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/notice/VersionNotice;->htmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNemoVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/notice/VersionNotice;->nemoVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isImportant()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/liquable/nemo/notice/VersionNotice;->important:Z

    return v0
.end method

.method public onNoticeClick(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/VersionNotice;->getId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/liquable/nemo/notice/ViewVersionNoticeActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public resolveNemoVersion()Lcom/liquable/nemo/NemoVersion;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/VersionNotice;->getNemoVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/NemoVersion;->fromString(Ljava/lang/String;)Lcom/liquable/nemo/NemoVersion;

    move-result-object v0

    return-object v0
.end method
