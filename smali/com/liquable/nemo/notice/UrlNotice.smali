.class public Lcom/liquable/nemo/notice/UrlNotice;
.super Lcom/liquable/nemo/notice/BaseSystemNotice;
.source "UrlNotice.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# instance fields
.field private final url:Ljava/lang/String;


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
    .param p5, "url"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "url"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/notice/BaseSystemNotice;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 33
    iput-object p5, p0, Lcom/liquable/nemo/notice/UrlNotice;->url:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static create(Lcom/liquable/nemo/notice/UrlSystemNoticeDto;)Lcom/liquable/nemo/notice/UrlNotice;
    .locals 5
    .param p0, "dto"    # Lcom/liquable/nemo/notice/UrlSystemNoticeDto;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/UrlSystemNoticeDto;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/UrlSystemNoticeDto;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/UrlSystemNoticeDto;->getPublishTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/UrlSystemNoticeDto;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/notice/UrlNotice;->create(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/liquable/nemo/notice/UrlNotice;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/liquable/nemo/notice/UrlNotice;
    .locals 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "noticeTime"    # J
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/liquable/nemo/notice/UrlNotice;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/notice/UrlNotice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/notice/UrlNotice;->url:Ljava/lang/String;

    return-object v0
.end method

.method public onNoticeClick(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/UrlNotice;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
