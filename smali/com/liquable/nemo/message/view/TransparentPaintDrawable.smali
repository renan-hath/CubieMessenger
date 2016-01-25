.class public Lcom/liquable/nemo/message/view/TransparentPaintDrawable;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "TransparentPaintDrawable.java"


# instance fields
.field private final targetHeightInPx:I

.field private final targetWidthInPx:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "targetWidthInPx"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 24
    iput p1, p0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetWidthInPx:I

    .line 25
    mul-int/lit16 v0, p1, 0x1e0

    div-int/lit16 v0, v0, 0x280

    iput v0, p0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetHeightInPx:I

    .line 27
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 35
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;

    .line 38
    .local v0, "other":Lcom/liquable/nemo/message/view/TransparentPaintDrawable;
    iget v3, p0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetHeightInPx:I

    iget v4, v0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetHeightInPx:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 39
    goto :goto_0

    .line 41
    :cond_3
    iget v3, p0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetWidthInPx:I

    iget v4, v0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetWidthInPx:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 42
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 49
    const/16 v0, 0x1f

    .line 50
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 51
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetHeightInPx:I

    add-int/lit8 v1, v2, 0x1f

    .line 52
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetWidthInPx:I

    add-int v1, v2, v3

    .line 53
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 58
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
    .line 63
    iget v0, p0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetHeightInPx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 64
    iget v0, p0, Lcom/liquable/nemo/message/view/TransparentPaintDrawable;->targetWidthInPx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 65
    return-void
.end method
