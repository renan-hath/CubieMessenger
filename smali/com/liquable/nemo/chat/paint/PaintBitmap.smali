.class Lcom/liquable/nemo/chat/paint/PaintBitmap;
.super Ljava/lang/Object;
.source "PaintBitmap.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintItem;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-object p3, p0, Lcom/liquable/nemo/chat/paint/PaintBitmap;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintBitmap;->paint:Landroid/graphics/Paint;

    .line 19
    return-void
.end method


# virtual methods
.method public getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintBitmap;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintBitmap;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 33
    return-void
.end method

.method public undo()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
