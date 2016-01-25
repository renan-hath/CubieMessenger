.class public Lcom/liquable/nemo/notice/ReactivationStickerNotice;
.super Lcom/liquable/nemo/notice/StickerThumbnailNotice;
.source "ReactivationStickerNotice.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# instance fields
.field private final packageCode:Ljava/lang/String;

.field private final productId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
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
    .param p5    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailUrls"
        .end annotation
    .end param
    .param p6, "packageCode"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "packageCode"
        .end annotation
    .end param
    .param p7, "productId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productId"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 38
    .local p5, "thumbnailUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/liquable/nemo/notice/StickerThumbnailNotice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 39
    iput-object p6, p0, Lcom/liquable/nemo/notice/ReactivationStickerNotice;->packageCode:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/liquable/nemo/notice/ReactivationStickerNotice;->productId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static create(Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;)Lcom/liquable/nemo/notice/ReactivationStickerNotice;
    .locals 8
    .param p0, "noticeDto"    # Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;

    .prologue
    .line 20
    new-instance v0, Lcom/liquable/nemo/notice/ReactivationStickerNotice;

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->getPublishTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 23
    invoke-virtual {v5}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->resolveThumbnailUrls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 24
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->getPackageCode()Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->getProductId()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/notice/ReactivationStickerNotice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->getPublishTime()J

    move-result-wide v3

    goto :goto_0
.end method


# virtual methods
.method public final getPackageCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/notice/ReactivationStickerNotice;->packageCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/notice/ReactivationStickerNotice;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public onNoticeClick(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/sticker/StickerShopActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
