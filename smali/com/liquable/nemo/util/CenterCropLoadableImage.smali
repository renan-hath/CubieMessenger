.class public Lcom/liquable/nemo/util/CenterCropLoadableImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "CenterCropLoadableImage.java"


# instance fields
.field private final file:Ljava/io/File;

.field private final pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

.field private final widthInDp:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/android/provider/PictureInfo;I)V
    .locals 1
    .param p1, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;
    .param p2, "widthInDp"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/liquable/nemo/util/CenterCropLoadableImage;-><init>(Ljava/io/File;Lcom/liquable/nemo/android/provider/PictureInfo;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "widthInDp"    # I

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/liquable/nemo/util/CenterCropLoadableImage;-><init>(Ljava/io/File;Lcom/liquable/nemo/android/provider/PictureInfo;I)V

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/liquable/nemo/android/provider/PictureInfo;I)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;
    .param p3, "widthInDp"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->file:Ljava/io/File;

    .line 26
    iput-object p2, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 27
    iput p3, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->widthInDp:I

    .line 28
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 40
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/liquable/nemo/util/CenterCropLoadableImage;

    .line 43
    .local v0, "other":Lcom/liquable/nemo/util/CenterCropLoadableImage;
    iget-object v3, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->file:Ljava/io/File;

    if-nez v3, :cond_3

    .line 44
    iget-object v3, v0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->file:Ljava/io/File;

    if-eqz v3, :cond_4

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->file:Ljava/io/File;

    iget-object v4, v0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v3, :cond_5

    .line 51
    iget-object v3, v0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-eqz v3, :cond_6

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    iget-object v4, v0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/android/provider/PictureInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_6
    iget v3, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->widthInDp:I

    iget v4, v0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->widthInDp:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 58
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 65
    const/16 v0, 0x1f

    .line 66
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 67
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->file:Ljava/io/File;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 68
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 69
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->widthInDp:I

    add-int v1, v2, v3

    .line 70
    return v1

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_0

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v3}, Lcom/liquable/nemo/android/provider/PictureInfo;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 77
    .local v0, "density":F
    iget v2, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->widthInDp:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 79
    .local v1, "targetWidth":I
    iget-object v2, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->file:Ljava/io/File;

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-static {p1, v2, v1}, Lcom/liquable/nemo/util/ImageUtils;->centerCrop(Landroid/content/Context;Lcom/liquable/nemo/android/provider/PictureInfo;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 82
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->file:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/liquable/nemo/util/ImageUtils;->centerCrop(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 2
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 87
    iget v1, p0, Lcom/liquable/nemo/util/CenterCropLoadableImage;->widthInDp:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 88
    .local v0, "minWidth":I
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 90
    return-void
.end method
