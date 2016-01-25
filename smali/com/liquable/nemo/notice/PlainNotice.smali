.class public Lcom/liquable/nemo/notice/PlainNotice;
.super Lcom/liquable/nemo/notice/BaseSystemNotice;
.source "PlainNotice.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
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
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/notice/BaseSystemNotice;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    return-void
.end method

.method public static fallback(Lcom/liquable/nemo/notice/UnknownNoticeDto;)Lcom/liquable/nemo/notice/PlainNotice;
    .locals 5
    .param p0, "unknownNoticeDto"    # Lcom/liquable/nemo/notice/UnknownNoticeDto;

    .prologue
    .line 25
    new-instance v0, Lcom/liquable/nemo/notice/PlainNotice;

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/UnknownNoticeDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/UnknownNoticeDto;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/UnknownNoticeDto;->getPublishTime()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/notice/PlainNotice;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static fallback(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/PlainNotice;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/liquable/nemo/notice/PlainNotice;->fallback(Ljava/lang/String;Ljava/lang/String;J)Lcom/liquable/nemo/notice/PlainNotice;

    move-result-object v0

    return-object v0
.end method

.method public static fallback(Ljava/lang/String;Ljava/lang/String;J)Lcom/liquable/nemo/notice/PlainNotice;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "noticeTime"    # J

    .prologue
    .line 21
    new-instance v0, Lcom/liquable/nemo/notice/PlainNotice;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liquable/nemo/notice/PlainNotice;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public onNoticeClick(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    return-void
.end method
