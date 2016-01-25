.class public Lcom/liquable/nemo/util/CircleResourceLoadableImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "CircleResourceLoadableImage.java"


# instance fields
.field private final height:I

.field private final resourceId:I

.field private final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "resourceId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 23
    iput p1, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->resourceId:I

    .line 24
    iput p2, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->width:I

    .line 25
    iput p3, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->height:I

    .line 26
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 34
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;

    .line 37
    .local v0, "other":Lcom/liquable/nemo/util/CircleResourceLoadableImage;
    iget v3, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->height:I

    iget v4, v0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->height:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :cond_3
    iget v3, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->resourceId:I

    iget v4, v0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->resourceId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->width:I

    iget v4, v0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->width:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 44
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 53
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->height:I

    add-int/lit8 v1, v2, 0x1f

    .line 54
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->resourceId:I

    add-int v1, v2, v3

    .line 55
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->width:I

    add-int v1, v2, v3

    .line 56
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->resourceId:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 63
    .local v2, "icon":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->width:I

    iget v6, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 64
    .local v1, "canvasBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02052e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 67
    .local v3, "mask":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->width:I

    iget v7, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->height:I

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 71
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->width:I

    iget v7, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->height:I

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->width:I

    iget v8, p0, Lcom/liquable/nemo/util/CircleResourceLoadableImage;->height:I

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 74
    invoke-static {v2}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 76
    return-object v1
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 2
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x42300000    # 44.0f

    .line 81
    mul-float v0, p1, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 82
    mul-float v0, p1, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 83
    return-void
.end method
