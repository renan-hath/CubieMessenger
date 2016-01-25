.class public Lcom/liquable/nemo/notice/HtmlNotice;
.super Lcom/liquable/nemo/notice/BaseSystemNotice;
.source "HtmlNotice.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# instance fields
.field private final htmlContent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
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
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/notice/BaseSystemNotice;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 30
    iput-object p5, p0, Lcom/liquable/nemo/notice/HtmlNotice;->htmlContent:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static create(Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;)Lcom/liquable/nemo/notice/HtmlNotice;
    .locals 5
    .param p0, "dto"    # Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->getPublishTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/HtmlSystemNoticeDto;->getHtmlContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/notice/HtmlNotice;->create(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/liquable/nemo/notice/HtmlNotice;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/liquable/nemo/notice/HtmlNotice;
    .locals 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "noticeTime"    # J
    .param p4, "htmlContent"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lcom/liquable/nemo/notice/HtmlNotice;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/notice/HtmlNotice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getHtmlContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/notice/HtmlNotice;->htmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public onNoticeClick(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/HtmlNotice;->getId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/liquable/nemo/notice/ViewHtmlNoticeActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
