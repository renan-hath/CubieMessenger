.class public Lcom/liquable/nemo/gallery/PictureInfoThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "PictureInfoThumbnail.java"


# instance fields
.field private final pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

.field private final type:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;-><init>(Lcom/liquable/nemo/android/provider/PictureInfo;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/android/provider/PictureInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/liquable/nemo/android/provider/PictureInfo;
    .param p2, "type"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 23
    iput p2, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->type:I

    .line 24
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    if-ne p0, p1, :cond_1

    .line 45
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
    check-cast v0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;

    .line 35
    .local v0, "other":Lcom/liquable/nemo/gallery/PictureInfoThumbnail;
    iget-object v3, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v3, :cond_3

    .line 36
    iget-object v3, v0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-eqz v3, :cond_4

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    iget-object v4, v0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/android/provider/PictureInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->type:I

    iget v4, v0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->type:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 43
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 50
    const/16 v0, 0x1f

    .line 51
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 52
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 53
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->type:I

    add-int v1, v2, v3

    .line 54
    return v1

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 67
    invoke-virtual {v5}, Lcom/liquable/nemo/android/provider/PictureInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget v7, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->type:I

    const/4 v8, 0x0

    .line 66
    invoke-static {v4, v5, v6, v7, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    const/16 v4, 0x64

    invoke-static {p1, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    .line 72
    .local v1, "size":I
    iget-object v4, p0, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 73
    invoke-virtual {v4}, Lcom/liquable/nemo/android/provider/PictureInfo;->getRotateDegree()I

    move-result v4

    .line 72
    invoke-static {v2, v4, v1, v1}, Lcom/liquable/nemo/util/ImageUtils;->scaleBitmapWithRoughSize(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 77
    .end local v1    # "size":I
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 84
    return-void
.end method
