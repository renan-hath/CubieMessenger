.class public Lcom/liquable/nemo/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;
    }
.end annotation


# static fields
.field public static final LEGACY_TARGET_SIZE_MINI_THUMBNAIL_SIDE:I = 0xc0

.field public static final LOW_JPEG_QUALITY:I = 0x3c

.field public static final MEDIUM_JPEG_QUALITY:I = 0x50

.field public static final NEW_TARGET_SIZE_MINI_THUMBNAIL_SIDE:I = 0x180

.field private static final PICTURE_MAX_LONG_SIZE:I = 0x3c0

.field private static final PICTURE_MAX_SHORT_SIZE:I = 0x280

.field private static final PROCESS_REGION_SIZE:I = 0x200

.field public static final TARGET_SIZE:I = 0x3c0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static calculateRotationDegreeByExif(Landroid/net/Uri;)I
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->calculateRotationDegreeByExif(Ljava/lang/String;)I

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static calculateRotationDegreeByExif(Ljava/lang/String;)I
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "exifInterface":Landroid/media/ExifInterface;
    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    .local v1, "orientation":I
    packed-switch v1, :pswitch_data_0

    .line 92
    .end local v0    # "exifInterface":Landroid/media/ExifInterface;
    .end local v1    # "orientation":I
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 81
    .restart local v0    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v1    # "orientation":I
    :pswitch_0
    const/16 v2, 0x5a

    goto :goto_1

    .line 84
    :pswitch_1
    const/16 v2, 0xb4

    goto :goto_1

    .line 87
    :pswitch_2
    const/16 v2, 0x10e

    goto :goto_1

    .line 89
    .end local v0    # "exifInterface":Landroid/media/ExifInterface;
    .end local v1    # "orientation":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static centerCrop(Landroid/content/Context;Lcom/liquable/nemo/android/provider/PictureInfo;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;
    .param p2, "targetWidth"    # I

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/liquable/nemo/android/provider/Medias;->findFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 106
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 107
    const/4 v2, 0x0

    .line 111
    :goto_0
    return-object v2

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/PictureInfo;->getRotateDegree()I

    move-result v2

    .line 110
    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 109
    invoke-static {v3}, Lcom/liquable/nemo/util/ImageUtils;->calculateRotationDegreeByExif(Landroid/net/Uri;)I

    move-result v3

    add-int v1, v2, v3

    .line 111
    .local v1, "finalDegree":I
    invoke-static {v0, p2, v1}, Lcom/liquable/nemo/util/ImageUtils;->centerCrop(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public static centerCrop(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "targetWidth"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/liquable/nemo/util/ImageUtils;->centerCrop(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static centerCrop(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "targetWidth"    # I
    .param p2, "finalDegree"    # I

    .prologue
    const/4 v7, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, p1, p1, v6}, Lcom/liquable/nemo/util/ImageUtils;->createScaleDownOptions(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 129
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-nez v4, :cond_1

    .line 156
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v7

    .line 125
    :catch_0
    move-exception v8

    .line 126
    .local v8, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 135
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 137
    .local v3, "squareEdge":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v4, p2

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 140
    int-to-float v4, p1

    int-to-float v6, v3

    div-float/2addr v4, v6

    int-to-float v6, p1

    int-to-float v10, v3

    div-float/2addr v6, v10

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 142
    .local v1, "newX":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v2, v4, 0x2

    .line 144
    .local v2, "newY":I
    const/4 v6, 0x1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 152
    .local v7, "converted":Landroid/graphics/Bitmap;
    if-eq v7, v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 1
    .param p0, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 162
    const/16 v0, 0x50

    invoke-static {p0, p1, p2, v0}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 4
    .param p0, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "quality"    # I

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1, p0, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 177
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 177
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3

    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 173
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static computeSampleSize(DDII)I
    .locals 5
    .param p0, "originalWidth"    # D
    .param p2, "originalHeight"    # D
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I

    .prologue
    .line 185
    int-to-double v1, p4

    div-double v1, p0, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    int-to-double v3, p5

    div-double v3, p2, v3

    .line 186
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    .line 185
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v0, v1

    .line 187
    .local v0, "sampleSize":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static createAnimatedImages(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 14
    .param p0, "backgroundBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "backgroundRect"    # Landroid/graphics/Rect;
    .param p3, "foregroundRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "foregroundBitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 196
    .local v8, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 198
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v1, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 200
    .local v1, "backgroundSourceRect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 201
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 202
    .local v4, "foreground":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 203
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 202
    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 205
    .local v7, "newImage":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 207
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 208
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 210
    .local v5, "foregroundSourceRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, p0, v1, p1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 212
    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v5, v0, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 214
    sget-object v10, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "temp_animate_custom_sticker_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 217
    .local v9, "tempFile":Ljava/io/File;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v11, 0x0

    invoke-static {v10, v7, v9, v11}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    .line 218
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "foreground":Landroid/graphics/Bitmap;
    .end local v5    # "foregroundSourceRect":Landroid/graphics/Rect;
    .end local v7    # "newImage":Landroid/graphics/Bitmap;
    .end local v9    # "tempFile":Ljava/io/File;
    :cond_0
    return-object v3
.end method

.method public static createBitmapWithBackground(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 229
    const/16 v2, 0x280

    const/16 v3, 0x1e0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 231
    .local v1, "paintWithBgBitmap":Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    .line 243
    :goto_0
    return-object v1

    .line 235
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 238
    new-instance v2, Landroid/graphics/Rect;

    .line 239
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    .line 240
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 238
    invoke-virtual {v0, p0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static createBitmapWithBackground(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "mediaFile"    # Ljava/io/File;
    .param p1, "color"    # I

    .prologue
    .line 247
    invoke-static {p0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, p1}, Lcom/liquable/nemo/util/ImageUtils;->createBitmapWithBackground(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 257
    :goto_0
    return-object v1

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 253
    .local v0, "paintBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    invoke-static {v0, p1}, Lcom/liquable/nemo/util/ImageUtils;->createBitmapWithBackground(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 257
    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    throw v1
.end method

.method public static createEmptyBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I

    .prologue
    .line 262
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createPictureScaleDownOptions(Ljava/io/InputStream;Landroid/graphics/Bitmap$Config;)Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;
    .locals 14
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 267
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 268
    .local v9, "sampleBitmapOption":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 270
    const/4 v0, 0x0

    invoke-static {p0, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 272
    const/16 v4, 0x3c0

    .line 274
    .local v4, "maxTargetSize":I
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v12, v0

    .line 275
    .local v12, "srcLong":F
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v13, v0

    .line 277
    .local v13, "srcShort":F
    const/high16 v0, 0x44700000    # 960.0f

    div-float v8, v12, v0

    .line 278
    .local v8, "longRatio":F
    div-float v6, v13, v8

    .line 280
    .local v6, "adjustedShort":F
    const/high16 v0, 0x44200000    # 640.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_0

    .line 281
    const/high16 v0, 0x44200000    # 640.0f

    div-float v11, v13, v0

    .line 282
    .local v11, "shortRatio":F
    div-float v0, v12, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 285
    .end local v11    # "shortRatio":F
    :cond_0
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/util/ImageUtils;->computeSampleSize(DDII)I

    move-result v10

    .line 289
    .local v10, "sampleSize":I
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 290
    .local v7, "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    iget-object v0, v9, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 292
    iput v10, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 293
    iput-object p1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 294
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_1

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 297
    :cond_1
    new-instance v0, Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;

    invoke-direct {v0, v7, v4}, Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;-><init>(Landroid/graphics/BitmapFactory$Options;I)V

    return-object v0
.end method

.method public static createRoundedBitmap(Landroid/content/Context;Lcom/liquable/nemo/util/Optional;IIF)Lcom/liquable/nemo/util/Optional;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "expectedWidth"    # I
    .param p3, "expectedHeight"    # I
    .param p4, "cornerRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;IIF)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "optImage":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 316
    invoke-virtual {p1}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v6

    if-nez v6, :cond_0

    .line 317
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    .line 343
    :goto_0
    return-object v6

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 321
    .local v2, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 322
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 324
    .local v1, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 328
    .local v3, "newImage":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 329
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 330
    .local v4, "paint":Landroid/graphics/Paint;
    const/high16 v6, -0x10000

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, p2

    int-to-float v8, p3

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v6, p4, p4, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 336
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 338
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 343
    invoke-static {v3}, Lcom/liquable/nemo/util/Optional;->of(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    goto :goto_0
.end method

.method public static createRoundedBitmap(Lcom/liquable/nemo/util/Optional;IILandroid/graphics/drawable/Drawable;)Lcom/liquable/nemo/util/Optional;
    .locals 9
    .param p1, "expectedWidth"    # I
    .param p2, "expectedHeight"    # I
    .param p3, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "optImage":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    const/4 v8, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v6

    if-nez v6, :cond_0

    .line 351
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    .line 374
    :goto_0
    return-object v6

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 355
    .local v2, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 356
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 359
    .local v1, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 362
    .local v3, "newImage":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 364
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 365
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 368
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 369
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 374
    invoke-static {v3}, Lcom/liquable/nemo/util/Optional;->of(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    goto :goto_0
.end method

.method private static createScaleDownOptions(Ljava/io/InputStream;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 10
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v9, 0x1

    .line 381
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 382
    .local v7, "sampleBitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 384
    const/4 v0, 0x0

    invoke-static {p0, v0, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 385
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/util/ImageUtils;->computeSampleSize(DDII)I

    move-result v8

    .line 389
    .local v8, "scale":I
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 390
    .local v6, "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    iget-object v0, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 392
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 393
    iput-object p3, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 394
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_0

    .line 395
    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 397
    :cond_0
    return-object v6
.end method

.method private static createScaleDownOptions(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, p1, p2, p3}, Lcom/liquable/nemo/util/ImageUtils;->createScaleDownOptions(Ljava/io/InputStream;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 409
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v2

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static createSecretShader(II)Landroid/graphics/Shader;
    .locals 13
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 414
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 415
    .local v11, "max":I
    div-int/lit8 v0, v11, 0x2

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 432
    .local v12, "radius":I
    const/16 v0, 0x20

    new-array v4, v0, [I

    .line 434
    .local v4, "colors":[I
    array-length v0, v4

    div-int/lit8 v9, v0, 0x2

    .line 435
    .local v9, "half":I
    move v10, v9

    .local v10, "i":I
    :goto_0
    array-length v0, v4

    if-ge v10, v0, :cond_0

    .line 436
    sub-int v0, v10, v9

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    int-to-float v1, v9

    div-float v8, v0, v1

    .line 439
    .local v8, "fraction":F
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v8

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 442
    .local v7, "alpha":I
    shl-int/lit8 v0, v7, 0x18

    aput v0, v4, v10

    .line 435
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 445
    .end local v7    # "alpha":I
    .end local v8    # "fraction":F
    :cond_0
    new-instance v0, Landroid/graphics/RadialGradient;

    div-int/lit8 v1, p0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    int-to-float v3, v12

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method

.method private static createSourceRects(II)[[Landroid/graphics/Rect;
    .locals 12
    .param p0, "orgWidth"    # I
    .param p1, "orgHeight"    # I

    .prologue
    const-wide/high16 v10, 0x4080000000000000L    # 512.0

    .line 449
    int-to-double v8, p0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 450
    .local v2, "column":I
    int-to-double v8, p1

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 451
    .local v7, "row":I
    filled-new-array {v7, v2}, [I

    move-result-object v8

    const-class v9, Landroid/graphics/Rect;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Rect;

    .line 453
    .local v0, "blocks":[[Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v0

    if-ge v3, v8, :cond_1

    .line 454
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    aget-object v8, v0, v3

    array-length v8, v8

    if-ge v4, v8, :cond_0

    .line 455
    add-int/lit8 v8, v4, 0x1

    mul-int/lit16 v8, v8, 0x200

    invoke-static {v8, p0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 456
    .local v6, "right":I
    add-int/lit8 v8, v3, 0x1

    mul-int/lit16 v8, v8, 0x200

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 457
    .local v1, "bottom":I
    new-instance v5, Landroid/graphics/Rect;

    mul-int/lit16 v8, v4, 0x200

    mul-int/lit16 v9, v3, 0x200

    invoke-direct {v5, v8, v9, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 458
    .local v5, "rect":Landroid/graphics/Rect;
    aget-object v8, v0, v3

    aput-object v5, v8, v4

    .line 454
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 453
    .end local v1    # "bottom":I
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "right":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    .end local v4    # "j":I
    :cond_1
    return-object v0
.end method

.method private static cropAsSquare(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 466
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 468
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 470
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 472
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 473
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 469
    invoke-static {v0, v1, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 474
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 478
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 479
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 475
    invoke-static {v0, v4, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeAlbumArtToBitmap(Ljava/lang/String;ZI)Lcom/liquable/nemo/util/Optional;
    .locals 2
    .param p0, "fileSrc"    # Ljava/lang/String;
    .param p1, "isThumbnail"    # Z
    .param p2, "degree"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    if-eqz p1, :cond_0

    const/16 v0, 0xc0

    .line 494
    .local v0, "targetSize":I
    :goto_0
    invoke-static {p0, p2, v0, v0}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    return-object v1

    .line 493
    .end local v0    # "targetSize":I
    :cond_0
    const/16 v0, 0x3c0

    goto :goto_0
.end method

.method public static decodeAndCropAsSquare(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "targetWidth"    # I

    .prologue
    .line 498
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageUtils;->cropAsSquare(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 500
    .local v1, "cropped":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v1, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 505
    .local v0, "createScaledBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static decodeAndScaleDownToBitmap(Lcom/liquable/nemo/util/imagesrc/ImageSrc;I)Lcom/liquable/nemo/util/Optional;
    .locals 3
    .param p0, "imageSrc"    # Lcom/liquable/nemo/util/imagesrc/ImageSrc;
    .param p1, "targetWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/imagesrc/ImageSrc;",
            "I)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    const/4 v0, -0x1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmapWithConfig(Lcom/liquable/nemo/util/imagesrc/ImageSrc;IILandroid/graphics/Bitmap$Config;Z)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static decodeAndScaleDownToBitmap(Lcom/liquable/nemo/util/imagesrc/ImageSrc;II)Lcom/liquable/nemo/util/Optional;
    .locals 2
    .param p0, "imageSrc"    # Lcom/liquable/nemo/util/imagesrc/ImageSrc;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/imagesrc/ImageSrc;",
            "II)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmapWithConfig(Lcom/liquable/nemo/util/imagesrc/ImageSrc;IILandroid/graphics/Bitmap$Config;Z)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static decodeAndScaleDownToBitmap(Ljava/lang/String;II)Lcom/liquable/nemo/util/Optional;
    .locals 1
    .param p0, "fileSrc"    # Ljava/lang/String;
    .param p1, "degree"    # I
    .param p2, "targetWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;
    .locals 1
    .param p0, "fileSrc"    # Ljava/lang/String;
    .param p1, "degree"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;IIIZ)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static decodeAndScaleDownToBitmap(Ljava/lang/String;IIIZ)Lcom/liquable/nemo/util/Optional;
    .locals 2
    .param p0, "fileSrc"    # Ljava/lang/String;
    .param p1, "degree"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "tryMutable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v0, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;-><init>(Ljava/lang/String;I)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p3, v1, p4}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmapWithConfig(Lcom/liquable/nemo/util/imagesrc/ImageSrc;IILandroid/graphics/Bitmap$Config;Z)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static decodeAndScaleDownToBitmap565(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;
    .locals 3
    .param p0, "fileSrc"    # Ljava/lang/String;
    .param p1, "degree"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v0, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;-><init>(Ljava/lang/String;I)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmapWithConfig(Lcom/liquable/nemo/util/imagesrc/ImageSrc;IILandroid/graphics/Bitmap$Config;Z)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private static decodeAndScaleDownToBitmapWithConfig(Lcom/liquable/nemo/util/imagesrc/ImageSrc;IILandroid/graphics/Bitmap$Config;Z)Lcom/liquable/nemo/util/Optional;
    .locals 9
    .param p0, "imageSrc"    # Lcom/liquable/nemo/util/imagesrc/ImageSrc;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "tryMutable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/imagesrc/ImageSrc;",
            "II",
            "Landroid/graphics/Bitmap$Config;",
            "Z)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "dimensionInputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 588
    .local v4, "roughInputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0}, Lcom/liquable/nemo/util/imagesrc/ImageSrc;->calcDegree()I

    move-result v2

    .line 589
    .local v2, "finalDegree":I
    const/16 v7, 0x5a

    if-eq v2, v7, :cond_0

    const/16 v7, 0x10e

    if-ne v2, v7, :cond_1

    .line 590
    :cond_0
    move v6, p1

    .line 591
    .local v6, "temp":I
    move p1, p2

    .line 592
    move p2, v6

    .line 594
    .end local v6    # "temp":I
    :cond_1
    invoke-interface {p0}, Lcom/liquable/nemo/util/imagesrc/ImageSrc;->open()Ljava/io/InputStream;

    move-result-object v0

    .line 595
    invoke-static {v0, p1, p2, p3}, Lcom/liquable/nemo/util/ImageUtils;->createScaleDownOptions(Ljava/io/InputStream;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 600
    .local v3, "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 601
    iput-boolean p4, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 603
    :cond_2
    invoke-interface {p0}, Lcom/liquable/nemo/util/imagesrc/ImageSrc;->open()Ljava/io/InputStream;

    move-result-object v4

    .line 604
    const/4 v7, 0x0

    invoke-static {v4, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 607
    .local v5, "roughlyScaledBitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_3

    .line 608
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 617
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 618
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .end local v2    # "finalDegree":I
    .end local v3    # "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "roughlyScaledBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 610
    .restart local v2    # "finalDegree":I
    .restart local v3    # "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "roughlyScaledBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    invoke-static {v5, v2, p1, p2}, Lcom/liquable/nemo/util/ImageUtils;->scaleBitmapWithRoughSize(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/util/Optional;->fromNullable(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 617
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 618
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 614
    .end local v2    # "finalDegree":I
    .end local v3    # "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "roughlyScaledBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 617
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 618
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 617
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 618
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v7
.end method

.method public static decodeAndScaleUpOrDownToBitmap(Ljava/lang/String;II)Lcom/liquable/nemo/util/Optional;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageUtils;->decodeDimension(Ljava/lang/String;)Lcom/liquable/nemo/util/Dimension;

    move-result-object v1

    .line 632
    .local v1, "dimension":Lcom/liquable/nemo/util/Dimension;
    iget v2, v1, Lcom/liquable/nemo/util/Dimension;->width:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Lcom/liquable/nemo/util/Dimension;->height:I

    if-lt v2, p2, :cond_0

    .line 633
    const/4 v2, 0x0

    invoke-static {p0, v2, p1, p2}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    .line 642
    :goto_0
    return-object v2

    .line 637
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 638
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 639
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    goto :goto_0

    .line 642
    :cond_1
    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/Optional;->of(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    goto :goto_0
.end method

.method public static decodeDimension(Lcom/liquable/nemo/util/imagesrc/ImageSrc;)Lcom/liquable/nemo/util/Dimension;
    .locals 6
    .param p0, "imageSrc"    # Lcom/liquable/nemo/util/imagesrc/ImageSrc;

    .prologue
    .line 646
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 647
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 649
    const/4 v2, 0x0

    .line 651
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0}, Lcom/liquable/nemo/util/imagesrc/ImageSrc;->open()Ljava/io/InputStream;

    move-result-object v2

    .line 653
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 654
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 655
    .local v4, "width":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 656
    .local v1, "height":I
    invoke-interface {p0}, Lcom/liquable/nemo/util/imagesrc/ImageSrc;->calcDegree()I

    move-result v5

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_0

    .line 657
    new-instance v5, Lcom/liquable/nemo/util/Dimension;

    invoke-direct {v5, v4, v1}, Lcom/liquable/nemo/util/Dimension;-><init>(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .end local v1    # "height":I
    .end local v4    # "width":I
    :goto_0
    return-object v5

    .line 659
    .restart local v1    # "height":I
    .restart local v4    # "width":I
    :cond_0
    :try_start_1
    new-instance v5, Lcom/liquable/nemo/util/Dimension;

    invoke-direct {v5, v1, v4}, Lcom/liquable/nemo/util/Dimension;-><init>(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 661
    .end local v1    # "height":I
    .end local v4    # "width":I
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v5, Lcom/liquable/nemo/util/Dimension;->INVALID:Lcom/liquable/nemo/util/Dimension;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5
.end method

.method public static decodeDimension(Ljava/lang/String;)Lcom/liquable/nemo/util/Dimension;
    .locals 4
    .param p0, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 669
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 670
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 673
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 674
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 675
    .local v2, "width":I
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 677
    .local v0, "height":I
    new-instance v3, Lcom/liquable/nemo/util/Dimension;

    invoke-direct {v3, v2, v0}, Lcom/liquable/nemo/util/Dimension;-><init>(II)V

    return-object v3
.end method

.method public static decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "isThumbnail"    # Z
    .param p3, "degree"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "ZI)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    const/4 v5, 0x0

    .line 692
    .local v5, "previewInputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 694
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 699
    if-eqz p2, :cond_0

    .line 700
    const/16 v8, 0x180

    const/16 v9, 0x180

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v9, v10}, Lcom/liquable/nemo/util/ImageUtils;->createScaleDownOptions(Ljava/io/InputStream;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 705
    .local v2, "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    const/16 v7, 0x180

    .line 714
    .local v7, "targetSize":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 715
    invoke-static {p1}, Lcom/liquable/nemo/util/ImageUtils;->calculateRotationDegreeByExif(Landroid/net/Uri;)I

    move-result v8

    add-int v1, p3, v8

    .line 721
    .local v1, "finalDegree":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_1

    invoke-static {v2}, Lcom/liquable/nemo/util/ImageUtils;->isJpeg(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 722
    const/4 v8, 0x1

    invoke-static {v3, v8}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v8

    invoke-static {v8, v2, v1, v7, v7}, Lcom/liquable/nemo/util/ImageUtils;->scaleBitmapRegionally(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/BitmapFactory$Options;III)Lcom/liquable/nemo/util/Optional;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 761
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 762
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .end local v1    # "finalDegree":I
    .end local v2    # "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "targetSize":I
    :goto_1
    return-object v8

    .line 707
    :cond_0
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8}, Lcom/liquable/nemo/util/ImageUtils;->createPictureScaleDownOptions(Ljava/io/InputStream;Landroid/graphics/Bitmap$Config;)Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;

    move-result-object v4

    .line 710
    .local v4, "pictureScaleOption":Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;
    # getter for: Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;->option:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v4}, Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;->access$000(Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 711
    .restart local v2    # "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    # getter for: Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;->maxTargetSize:I
    invoke-static {v4}, Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;->access$100(Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;)I

    move-result v7

    .restart local v7    # "targetSize":I
    goto :goto_0

    .line 729
    .end local v4    # "pictureScaleOption":Lcom/liquable/nemo/util/ImageUtils$PictureScaleOption;
    .restart local v1    # "finalDegree":I
    :cond_1
    const/4 v8, 0x0

    invoke-static {v3, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 732
    .local v6, "roughlyScaledBitmap":Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 733
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 761
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 762
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 737
    :cond_2
    :try_start_2
    invoke-static {v6, v1, v7, v7}, Lcom/liquable/nemo/util/ImageUtils;->scaleBitmapWithRoughSize(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Lcom/liquable/nemo/util/Optional;->fromNullable(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 761
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 762
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 741
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v8

    new-instance v9, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "img:w="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 745
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",h="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 747
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",targetW="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",targetH="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",freeM="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 753
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",maxM="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 755
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    invoke-virtual {v8, v9}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 756
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 758
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "finalDegree":I
    .end local v2    # "inBitmapOption":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "roughlyScaledBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "targetSize":I
    :catch_1
    move-exception v0

    .line 759
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 761
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 762
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_1

    .line 761
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 762
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v8
.end method

.method public static decodeToSecretBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "degree"    # I

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static encodeSecret(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 773
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 775
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 776
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 775
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 778
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 779
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 781
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 783
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/liquable/nemo/util/ImageUtils;->createSecretShader(II)Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 785
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 787
    return-object v2
.end method

.method public static getCompressFormat(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 792
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 793
    .local v1, "sampleBitmapOption":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 795
    const/4 v0, 0x0

    .line 797
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 798
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 800
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 801
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 802
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :goto_0
    return-object v2

    .line 804
    :cond_0
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
.end method

.method public static getPreferedPictureCompressFormat(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 814
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 815
    .local v2, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 817
    const/4 v0, 0x0

    .line 819
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 820
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 831
    :goto_0
    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 832
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 837
    .local v1, "mimeTypeIsPng":Z
    :goto_1
    if-eqz v1, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v4, 0x280

    if-ne v3, v4, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v4, 0x1e0

    if-ne v3, v4, :cond_1

    .line 840
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 842
    :goto_2
    return-object v3

    .line 821
    .end local v1    # "mimeTypeIsPng":Z
    :catch_0
    move-exception v3

    .line 828
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3

    .line 832
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 842
    .restart local v1    # "mimeTypeIsPng":Z
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_2
.end method

.method public static invertImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 846
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 847
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 848
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 850
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 851
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 852
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 853
    return-object v1
.end method

.method public static isBitmapExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 857
    if-nez p1, :cond_0

    .line 862
    :goto_0
    return v1

    .line 861
    :cond_0
    new-instance v2, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;

    invoke-direct {v2, p0, p1, v1}, Lcom/liquable/nemo/util/imagesrc/ImageUriSrc;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-static {v2}, Lcom/liquable/nemo/util/ImageUtils;->decodeDimension(Lcom/liquable/nemo/util/imagesrc/ImageSrc;)Lcom/liquable/nemo/util/Dimension;

    move-result-object v0

    .line 862
    .local v0, "decodeDimension":Lcom/liquable/nemo/util/Dimension;
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->isValid()Z

    move-result v1

    goto :goto_0
.end method

.method public static isBitmapExist(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 866
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 867
    :cond_0
    const/4 v1, 0x0

    .line 871
    :goto_0
    return v1

    .line 870
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/util/ImageUtils;->decodeDimension(Ljava/lang/String;)Lcom/liquable/nemo/util/Dimension;

    move-result-object v0

    .line 871
    .local v0, "decodeDimension":Lcom/liquable/nemo/util/Dimension;
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->isValid()Z

    move-result v1

    goto :goto_0
.end method

.method private static isJpeg(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 2
    .param p0, "inBitmapOption"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 875
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string/jumbo v1, "jpeg"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string/jumbo v1, "jpg"

    .line 876
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static popSourceRect([[Landroid/graphics/Rect;III)Landroid/graphics/Rect;
    .locals 4
    .param p0, "sourceRect"    # [[Landroid/graphics/Rect;
    .param p1, "degree"    # I
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 886
    array-length v1, p0

    .line 887
    .local v1, "rows":I
    const/4 v2, 0x0

    aget-object v2, p0, v2

    array-length v0, v2

    .line 889
    .local v0, "cols":I
    const/16 v2, 0x5a

    if-ne p1, v2, :cond_0

    .line 890
    sub-int v2, v1, p3

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    aget-object v2, v2, p2

    .line 896
    :goto_0
    return-object v2

    .line 891
    :cond_0
    const/16 v2, 0xb4

    if-ne p1, v2, :cond_1

    .line 892
    sub-int v2, v1, p2

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    sub-int v3, v0, p3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 893
    :cond_1
    const/16 v2, 0x10e

    if-ne p1, v2, :cond_2

    .line 894
    aget-object v2, p0, p3

    sub-int v3, v0, p2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 896
    :cond_2
    aget-object v2, p0, p2

    aget-object v2, v2, p3

    goto :goto_0
.end method

.method public static recycleOldIfNotSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "oldBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 906
    if-eqz p0, :cond_0

    if-eq p0, p1, :cond_0

    .line 907
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 909
    :cond_0
    return-void
.end method

.method public static recycleQuietly(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 912
    if-eqz p0, :cond_0

    .line 913
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 915
    :cond_0
    return-void
.end method

.method public static saveSmallUserIcon(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p2, "smallIconLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x42500000    # 52.0f

    .line 920
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 921
    .local v1, "density":F
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {p1, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v4

    .line 922
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 921
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 924
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v2, v3

    .line 941
    :goto_0
    return-object v2

    .line 928
    :cond_0
    mul-float v4, v5, v1

    float-to-int v4, v4

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 933
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    move-object v2, v3

    .line 934
    goto :goto_0

    .line 937
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 939
    invoke-virtual {p2, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v4

    .line 937
    invoke-static {v3, v2, v4}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    goto :goto_0
.end method

.method static scaleBitmapRegionally(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/BitmapFactory$Options;III)Lcom/liquable/nemo/util/Optional;
    .locals 36
    .param p0, "bitmapRegionDecoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p1, "inBitmapOption"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "degree"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/BitmapRegionDecoder;",
            "Landroid/graphics/BitmapFactory$Options;",
            "III)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 950
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    .line 951
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v8

    .line 950
    invoke-static {v6, v8}, Lcom/liquable/nemo/util/ImageUtils;->createSourceRects(II)[[Landroid/graphics/Rect;

    move-result-object v29

    .line 953
    .local v29, "sourceRects":[[Landroid/graphics/Rect;
    const/16 v6, 0x5a

    move/from16 v0, p2

    if-eq v0, v6, :cond_0

    const/16 v6, 0x10e

    move/from16 v0, p2

    if-ne v0, v6, :cond_3

    :cond_0
    const/16 v21, 0x1

    .line 954
    .local v21, "needRotate":Z
    :goto_0
    if-eqz v21, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v31

    .line 955
    .local v31, "width":I
    :goto_1
    if-eqz v21, :cond_5

    .line 956
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v18

    .line 958
    .local v18, "height":I
    :goto_2
    move/from16 v0, v31

    int-to-double v8, v0

    move/from16 v0, p3

    int-to-double v10, v0

    div-double/2addr v8, v10

    move/from16 v0, v18

    int-to-double v10, v0

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v10, v10, v34

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    .line 959
    .local v15, "finalScale":D
    move/from16 v0, v31

    int-to-double v8, v0

    const-wide/high16 v10, 0x4080000000000000L    # 512.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v14, v8

    .line 960
    .local v14, "column":I
    move/from16 v0, v18

    int-to-double v8, v0

    const-wide/high16 v10, 0x4080000000000000L    # 512.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    move/from16 v25, v0

    .line 961
    .local v25, "row":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide v0, v15

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    .line 963
    const/16 v30, 0x0

    .line 964
    .local v30, "wPixels":I
    const/16 v17, 0x0

    .line 965
    .local v17, "hPixels":I
    move/from16 v0, v25

    filled-new-array {v0, v14}, [I

    move-result-object v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [[I

    .line 966
    .local v24, "regionTargetWidth":[[I
    move/from16 v0, v25

    filled-new-array {v0, v14}, [I

    move-result-object v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[I

    .line 968
    .local v23, "regionTargetHeight":[[I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 969
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v14, :cond_7

    .line 970
    move-object/from16 v0, v29

    move/from16 v1, p2

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/util/ImageUtils;->popSourceRect([[Landroid/graphics/Rect;III)Landroid/graphics/Rect;

    move-result-object v28

    .line 974
    .local v28, "sourceRect":Landroid/graphics/Rect;
    if-eqz v21, :cond_6

    .line 975
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v8, v6

    div-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v27, v0

    .line 976
    .local v27, "scaledWidth":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v8, v6

    div-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v26, v0

    .line 981
    .local v26, "scaledHeight":I
    :goto_5
    if-nez v19, :cond_1

    .line 982
    add-int v30, v30, v27

    .line 984
    :cond_1
    if-nez v20, :cond_2

    .line 985
    add-int v17, v17, v26

    .line 988
    :cond_2
    aget-object v6, v24, v19

    aput v27, v6, v20

    .line 989
    aget-object v6, v23, v19

    aput v26, v6, v20

    .line 969
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 953
    .end local v14    # "column":I
    .end local v15    # "finalScale":D
    .end local v17    # "hPixels":I
    .end local v18    # "height":I
    .end local v19    # "i":I
    .end local v20    # "j":I
    .end local v21    # "needRotate":Z
    .end local v23    # "regionTargetHeight":[[I
    .end local v24    # "regionTargetWidth":[[I
    .end local v25    # "row":I
    .end local v26    # "scaledHeight":I
    .end local v27    # "scaledWidth":I
    .end local v28    # "sourceRect":Landroid/graphics/Rect;
    .end local v30    # "wPixels":I
    .end local v31    # "width":I
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 954
    .restart local v21    # "needRotate":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v31

    goto/16 :goto_1

    .line 957
    .restart local v31    # "width":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v18

    goto/16 :goto_2

    .line 978
    .restart local v14    # "column":I
    .restart local v15    # "finalScale":D
    .restart local v17    # "hPixels":I
    .restart local v18    # "height":I
    .restart local v19    # "i":I
    .restart local v20    # "j":I
    .restart local v23    # "regionTargetHeight":[[I
    .restart local v24    # "regionTargetWidth":[[I
    .restart local v25    # "row":I
    .restart local v28    # "sourceRect":Landroid/graphics/Rect;
    .restart local v30    # "wPixels":I
    :cond_6
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v8, v6

    div-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v27, v0

    .line 979
    .restart local v27    # "scaledWidth":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v8, v6

    div-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v26, v0

    .restart local v26    # "scaledHeight":I
    goto :goto_5

    .line 968
    .end local v26    # "scaledHeight":I
    .end local v27    # "scaledWidth":I
    .end local v28    # "sourceRect":Landroid/graphics/Rect;
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 993
    .end local v20    # "j":I
    :cond_8
    mul-int v6, v30, v17

    new-array v13, v6, [I

    .line 994
    .local v13, "bitmapPixels":[I
    const/16 v33, 0x0

    .line 995
    .local v33, "yOffset":I
    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 996
    const/16 v32, 0x0

    .line 997
    .local v32, "xOffset":I
    const/16 v20, 0x0

    .restart local v20    # "j":I
    :goto_7
    move/from16 v0, v20

    if-ge v0, v14, :cond_c

    .line 998
    move-object/from16 v0, v29

    move/from16 v1, p2

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/util/ImageUtils;->popSourceRect([[Landroid/graphics/Rect;III)Landroid/graphics/Rect;

    move-result-object v22

    .line 999
    .local v22, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1000
    .local v4, "regionBitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_9

    .line 1001
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    .line 1023
    .end local v4    # "regionBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "j":I
    .end local v22    # "rect":Landroid/graphics/Rect;
    .end local v32    # "xOffset":I
    :goto_8
    return-object v6

    .line 1003
    .restart local v4    # "regionBitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "j":I
    .restart local v22    # "rect":Landroid/graphics/Rect;
    .restart local v32    # "xOffset":I
    :cond_9
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lez v6, :cond_a

    .line 1004
    aget-object v6, v24, v19

    aget v6, v6, v20

    int-to-double v6, v6

    aget-object v8, v23, v19

    aget v8, v8, v20

    int-to-double v8, v8

    move/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lcom/liquable/nemo/util/ImageUtils;->scaleBitmapWithPreciseSize(Landroid/graphics/Bitmap;IDD)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1008
    .local v5, "regionScaledBitmap":Landroid/graphics/Bitmap;
    mul-int v6, v30, v33

    add-int v7, v6, v32

    .line 1009
    .local v7, "x":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1014
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1015
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object v6, v13

    move/from16 v8, v30

    .line 1009
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1016
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int v32, v32, v6

    .line 1018
    .end local v5    # "regionScaledBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "x":I
    :cond_a
    add-int/lit8 v6, v14, -0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_b

    .line 1019
    aget-object v6, v23, v19

    aget v6, v6, v20

    add-int v33, v33, v6

    .line 997
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 995
    .end local v4    # "regionBitmap":Landroid/graphics/Bitmap;
    .end local v22    # "rect":Landroid/graphics/Rect;
    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 1023
    .end local v20    # "j":I
    .end local v32    # "xOffset":I
    :cond_d
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v13, v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/liquable/nemo/util/Optional;->fromNullable(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    goto :goto_8
.end method

.method private static scaleBitmapWithPreciseSize(Landroid/graphics/Bitmap;IDD)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "roughlyScaledBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I
    .param p2, "preciseWidth"    # D
    .param p4, "preciseHeight"    # D

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1034
    if-eqz p1, :cond_0

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_1

    .line 1036
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1037
    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1035
    invoke-static {p0, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1047
    .local v0, "finalScaledBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {p0, v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleOldIfNotSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1049
    if-nez p1, :cond_2

    .line 1063
    .end local v0    # "finalScaledBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 1042
    :cond_1
    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1043
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1041
    invoke-static {p0, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "finalScaledBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1053
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1054
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p1

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1058
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1059
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 1055
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1062
    .local v7, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v7}, Lcom/liquable/nemo/util/ImageUtils;->recycleOldIfNotSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object v0, v7

    .line 1063
    goto :goto_1
.end method

.method public static scaleBitmapWithRoughSize(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "roughlyScaledBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I

    .prologue
    .line 1079
    if-nez p1, :cond_0

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_0

    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move/from16 v0, p3

    if-ne v1, v0, :cond_0

    .line 1101
    .end local p0    # "roughlyScaledBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 1085
    .restart local p0    # "roughlyScaledBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/16 v1, 0x5a

    move/from16 v0, p1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v9, 0x1

    .line 1087
    .local v9, "isRotate":Z
    :goto_1
    if-eqz v9, :cond_3

    .line 1088
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1090
    .local v11, "sourceWidth":I
    :goto_2
    if-eqz v9, :cond_4

    .line 1091
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 1094
    .local v10, "sourceHeight":I
    :goto_3
    int-to-double v1, v11

    move/from16 v0, p2

    int-to-double v12, v0

    div-double/2addr v1, v12

    int-to-double v12, v10

    move/from16 v0, p3

    int-to-double v14, v0

    div-double/2addr v12, v14

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 1097
    .local v7, "finalScale":D
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 1098
    int-to-double v1, v11

    div-double v3, v1, v7

    .line 1099
    .local v3, "resultWidth":D
    int-to-double v1, v10

    div-double v5, v1, v7

    .local v5, "resultHeight":D
    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1101
    invoke-static/range {v1 .. v6}, Lcom/liquable/nemo/util/ImageUtils;->scaleBitmapWithPreciseSize(Landroid/graphics/Bitmap;IDD)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 1085
    .end local v3    # "resultWidth":D
    .end local v5    # "resultHeight":D
    .end local v7    # "finalScale":D
    .end local v9    # "isRotate":Z
    .end local v10    # "sourceHeight":I
    .end local v11    # "sourceWidth":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1089
    .restart local v9    # "isRotate":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    goto :goto_2

    .line 1092
    .restart local v11    # "sourceWidth":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    goto :goto_3
.end method
