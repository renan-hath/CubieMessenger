.class public Lcom/liquable/nemo/sticker/model/VisibleSticker;
.super Ljava/lang/Object;
.source "VisibleSticker.java"


# instance fields
.field private final found:Z

.field private final stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;


# direct methods
.method public constructor <init>(ZLcom/liquable/nemo/model/sticker/StickerDto;)V
    .locals 0
    .param p1, "found"    # Z
    .param p2, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/liquable/nemo/sticker/model/VisibleSticker;->found:Z

    .line 12
    iput-object p2, p0, Lcom/liquable/nemo/sticker/model/VisibleSticker;->stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 13
    return-void
.end method


# virtual methods
.method public final getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/VisibleSticker;->stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

    return-object v0
.end method

.method public final isFound()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/model/VisibleSticker;->found:Z

    return v0
.end method
