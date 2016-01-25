.class public Lcom/liquable/nemo/util/RoundedLoadableImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "RoundedLoadableImage.java"


# instance fields
.field private final cornerRadius:I

.field private final height:I

.field private final image:Lcom/liquable/nemo/util/LoadableImage;

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/LoadableImage;III)V
    .locals 0
    .param p1, "image"    # Lcom/liquable/nemo/util/LoadableImage;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "cornerRadius"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    .line 16
    iput p2, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->width:I

    .line 17
    iput p3, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->height:I

    .line 18
    iput p4, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->cornerRadius:I

    .line 19
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    invoke-interface {v0}, Lcom/liquable/nemo/util/LoadableImage;->isLoading()Z

    move-result v0

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 32
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/liquable/nemo/util/RoundedLoadableImage;

    .line 35
    .local v0, "other":Lcom/liquable/nemo/util/RoundedLoadableImage;
    iget v3, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->cornerRadius:I

    iget v4, v0, Lcom/liquable/nemo/util/RoundedLoadableImage;->cornerRadius:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    iget v3, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->height:I

    iget v4, v0, Lcom/liquable/nemo/util/RoundedLoadableImage;->height:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 39
    goto :goto_0

    .line 41
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    if-nez v3, :cond_5

    .line 42
    iget-object v3, v0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    if-eqz v3, :cond_6

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    iget-object v4, v0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_6
    iget v3, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->width:I

    iget v4, v0, Lcom/liquable/nemo/util/RoundedLoadableImage;->width:I

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
    iget v2, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->cornerRadius:I

    add-int/lit8 v1, v2, 0x1f

    .line 59
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->height:I

    add-int v1, v2, v3

    .line 60
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 61
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->width:I

    add-int v1, v2, v3

    .line 62
    return v1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .local v1, "density":F
    iget-object v3, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    invoke-interface {v3, p1}, Lcom/liquable/nemo/util/LoadableImage;->load(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/liquable/nemo/util/Optional;->fromNullable(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v3

    iget v4, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iget v5, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iget v6, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->cornerRadius:I

    int-to-float v6, v6

    .line 69
    invoke-static {p1, v3, v4, v5, v6}, Lcom/liquable/nemo/util/ImageUtils;->createRoundedBitmap(Landroid/content/Context;Lcom/liquable/nemo/util/Optional;IIF)Lcom/liquable/nemo/util/Optional;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 74
    .local v2, "roundedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/liquable/nemo/util/ImageUtils;->recycleOldIfNotSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 75
    return-object v2
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iget v0, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 81
    iget v0, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 82
    return-void
.end method

.method public showLoadingAnimation()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/util/RoundedLoadableImage;->image:Lcom/liquable/nemo/util/LoadableImage;

    invoke-interface {v0}, Lcom/liquable/nemo/util/LoadableImage;->showLoadingAnimation()Z

    move-result v0

    return v0
.end method
