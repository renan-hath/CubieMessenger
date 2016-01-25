.class public Lcom/liquable/nemo/gallery/PictureInfoImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "PictureInfoImage.java"


# instance fields
.field private final pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

.field private final targetHeight:I

.field private final targetWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/android/provider/PictureInfo;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 24
    iput p3, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetWidth:I

    .line 25
    iput p4, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetHeight:I

    .line 26
    return-void
.end method


# virtual methods
.method public clearViewIfNotYetLoaded()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 39
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/liquable/nemo/gallery/PictureInfoImage;

    .line 42
    .local v0, "other":Lcom/liquable/nemo/gallery/PictureInfoImage;
    iget-object v3, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v3, :cond_3

    .line 43
    iget-object v3, v0, Lcom/liquable/nemo/gallery/PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-eqz v3, :cond_4

    move v1, v2

    .line 44
    goto :goto_0

    .line 46
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    iget-object v4, v0, Lcom/liquable/nemo/gallery/PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/android/provider/PictureInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 47
    goto :goto_0

    .line 49
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetHeight:I

    iget v4, v0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetHeight:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetWidth:I

    iget v4, v0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetWidth:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 53
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 60
    const/16 v0, 0x1f

    .line 61
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 62
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 63
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetHeight:I

    add-int v1, v2, v3

    .line 64
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetWidth:I

    add-int v1, v2, v3

    .line 65
    return v1

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/android/provider/PictureInfo;->toImageSrc(Landroid/content/Context;)Lcom/liquable/nemo/util/imagesrc/ImageSrc;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetWidth:I

    iget v3, p0, Lcom/liquable/nemo/gallery/PictureInfoImage;->targetHeight:I

    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Lcom/liquable/nemo/util/imagesrc/ImageSrc;II)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 73
    .local v0, "coverBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 77
    return-void
.end method
