.class public Lcom/liquable/nemo/notice/NewStickerNotice;
.super Lcom/liquable/nemo/notice/BaseSystemNotice;
.source "NewStickerNotice.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# instance fields
.field private final stickerCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
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
    .param p5    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "stickerCategories"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 37
    .local p5, "stickerCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/notice/BaseSystemNotice;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 38
    iput-object p5, p0, Lcom/liquable/nemo/notice/NewStickerNotice;->stickerCategories:Ljava/util/List;

    .line 39
    return-void
.end method

.method public static create(Lcom/liquable/nemo/notice/NewStickerSystemNoticeDto;)Lcom/liquable/nemo/notice/NewStickerNotice;
    .locals 6
    .param p0, "newStickerNoticeDto"    # Lcom/liquable/nemo/notice/NewStickerSystemNoticeDto;

    .prologue
    .line 17
    new-instance v0, Lcom/liquable/nemo/notice/NewStickerNotice;

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NewStickerSystemNoticeDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NewStickerSystemNoticeDto;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NewStickerSystemNoticeDto;->getPublishTime()J

    move-result-wide v3

    .line 20
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NewStickerSystemNoticeDto;->getStickerCategories()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/notice/NewStickerNotice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/liquable/nemo/notice/NewStickerNotice;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "noticeTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liquable/nemo/notice/NewStickerNotice;"
        }
    .end annotation

    .prologue
    .line 27
    .local p4, "stickerCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/liquable/nemo/notice/NewStickerNotice;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/notice/NewStickerNotice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getStickerCategories()Ljava/util/List;
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

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/notice/NewStickerNotice;->stickerCategories:Ljava/util/List;

    return-object v0
.end method

.method public onNoticeClick(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/sticker/StickerShopActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
