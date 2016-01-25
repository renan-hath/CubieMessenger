.class public Lcom/liquable/nemo/notice/StickerThumbnailNotice;
.super Lcom/liquable/nemo/notice/BaseSystemNotice;
.source "StickerThumbnailNotice.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# instance fields
.field private final publishTime:J

.field private final thumbnailUrls:Ljava/util/List;
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
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
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
    .line 32
    .local p5, "thumbnailUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/notice/BaseSystemNotice;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 33
    iput-wide p3, p0, Lcom/liquable/nemo/notice/StickerThumbnailNotice;->publishTime:J

    .line 34
    iput-object p5, p0, Lcom/liquable/nemo/notice/StickerThumbnailNotice;->thumbnailUrls:Ljava/util/List;

    .line 35
    return-void
.end method

.method public static create(Lcom/liquable/nemo/notice/StickerThumbnailSystemNoticeDto;)Lcom/liquable/nemo/notice/StickerThumbnailNotice;
    .locals 6
    .param p0, "noticeDto"    # Lcom/liquable/nemo/notice/StickerThumbnailSystemNoticeDto;

    .prologue
    .line 18
    new-instance v0, Lcom/liquable/nemo/notice/StickerThumbnailNotice;

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/StickerThumbnailSystemNoticeDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/StickerThumbnailSystemNoticeDto;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/StickerThumbnailSystemNoticeDto;->getPublishTime()J

    move-result-wide v3

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 21
    invoke-virtual {v5}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/notice/StickerThumbnailSystemNoticeDto;->resolveThumbnailUrls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/notice/StickerThumbnailNotice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getPublishTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/liquable/nemo/notice/StickerThumbnailNotice;->publishTime:J

    return-wide v0
.end method

.method public final getThumbnailUrls()Ljava/util/List;
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
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/notice/StickerThumbnailNotice;->thumbnailUrls:Ljava/util/List;

    return-object v0
.end method

.method public onNoticeClick(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/sticker/StickerShopActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
