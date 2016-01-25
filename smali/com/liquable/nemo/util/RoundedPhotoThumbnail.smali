.class public Lcom/liquable/nemo/util/RoundedPhotoThumbnail;
.super Lcom/liquable/nemo/util/PhotoThumbnail;
.source "RoundedPhotoThumbnail.java"


# static fields
.field private static final PHOTO_CORNER_RADIUS:F = 8.0f


# direct methods
.method public constructor <init>(Ljava/io/File;II)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/util/PhotoThumbnail;-><init>(Ljava/io/File;II)V

    .line 14
    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 19
    .local v1, "density":F
    iget-object v3, p0, Lcom/liquable/nemo/util/RoundedPhotoThumbnail;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/liquable/nemo/util/Optional;->fromNullable(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v3

    iget v4, p0, Lcom/liquable/nemo/util/RoundedPhotoThumbnail;->widthInDp:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iget v5, p0, Lcom/liquable/nemo/util/RoundedPhotoThumbnail;->heightInDp:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    .line 20
    invoke-static {p1, v3, v4, v5, v6}, Lcom/liquable/nemo/util/ImageUtils;->createRoundedBitmap(Landroid/content/Context;Lcom/liquable/nemo/util/Optional;IIF)Lcom/liquable/nemo/util/Optional;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 25
    .local v2, "result":Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/liquable/nemo/util/ImageUtils;->recycleOldIfNotSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 26
    return-object v2
.end method
