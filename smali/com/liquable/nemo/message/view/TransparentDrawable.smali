.class public Lcom/liquable/nemo/message/view/TransparentDrawable;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "TransparentDrawable.java"


# instance fields
.field private final targetHeight:I

.field private final targetWidth:I


# direct methods
.method public constructor <init>(FII)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 32
    int-to-float v0, p2

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetWidth:I

    .line 33
    int-to-float v0, p3

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetHeight:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widthInPixel"    # I
    .param p3, "heightInPixel"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 24
    .local v2, "screenwidthPixel":I
    int-to-float v3, p2

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 25
    .local v1, "ratio":F
    int-to-float v3, p3

    div-float v0, v3, v1

    .line 27
    .local v0, "destHeightPixel":F
    iput v2, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetWidth:I

    .line 28
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetHeight:I

    .line 29
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 42
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/liquable/nemo/message/view/TransparentDrawable;

    .line 45
    .local v0, "other":Lcom/liquable/nemo/message/view/TransparentDrawable;
    iget v3, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetHeight:I

    iget v4, v0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetHeight:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    iget v3, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetWidth:I

    iget v4, v0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetWidth:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 49
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetHeight:I

    add-int/lit8 v1, v2, 0x1f

    .line 59
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetWidth:I

    add-int v1, v2, v3

    .line 60
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 65
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 70
    iget v0, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetHeight:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 71
    iget v0, p0, Lcom/liquable/nemo/message/view/TransparentDrawable;->targetWidth:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 72
    return-void
.end method
