.class public Lcom/aviary/android/feather/library/utils/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# static fields
.field static logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string/jumbo v0, "DecodeUtils"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-void
.end method

.method public static computeSampleSize(IIIIILcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;)I
    .locals 9
    .param p0, "bitmapW"    # I
    .param p1, "bitmapH"    # I
    .param p2, "maxW"    # I
    .param p3, "maxH"    # I
    .param p4, "orientation"    # I
    .param p5, "sizes"    # Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    .prologue
    .line 179
    if-eqz p4, :cond_0

    const/16 v5, 0xb4

    if-ne p4, v5, :cond_2

    .line 180
    :cond_0
    int-to-double v3, p0

    .line 181
    .local v3, "w":D
    int-to-double v0, p1

    .line 187
    .local v0, "h":D
    :goto_0
    if-eqz p5, :cond_1

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->setOriginalSize(Ljava/lang/String;)V

    .line 189
    double-to-int v5, v3

    double-to-int v6, v0

    invoke-virtual {p5, v5, v6}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->setRealSize(II)V

    .line 192
    :cond_1
    int-to-double v5, p2

    div-double v5, v3, v5

    int-to-double v7, p3

    div-double v7, v0, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 193
    .local v2, "sampleSize":I
    return v2

    .line 183
    .end local v0    # "h":D
    .end local v2    # "sampleSize":I
    .end local v3    # "w":D
    :cond_2
    int-to-double v3, p1

    .line 184
    .restart local v3    # "w":D
    int-to-double v0, p0

    .restart local v0    # "h":D
    goto :goto_0
.end method

.method public static decode(Landroid/content/Context;Landroid/net/Uri;IILcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxW"    # I
    .param p3, "maxH"    # I
    .param p4, "sizes"    # Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    .prologue
    .line 38
    sget-object v1, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "decode: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 39
    invoke-static/range {p0 .. p1}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v19

    .line 40
    .local v19, "stream":Ljava/io/InputStream;
    if-nez v19, :cond_1

    .line 41
    const/4 v13, 0x0

    .line 80
    :cond_0
    :goto_0
    return-object v13

    .line 43
    :cond_1
    sget-object v1, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "opened input stream"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 45
    invoke-static/range {p0 .. p1}, Lcom/aviary/android/feather/library/utils/ExifUtils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 46
    .local v5, "orientation":I
    sget-object v1, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "orientation: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->debug([Ljava/lang/Object;)V

    .line 48
    const/4 v13, 0x0

    .line 49
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 50
    .local v15, "imageSize":[I
    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->decodeImageBounds(Ljava/io/InputStream;[I)Z

    move-result v14

    .line 51
    .local v14, "decoded":Z
    invoke-static/range {v19 .. v19}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 52
    sget-object v1, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "closed input stream"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 54
    if-eqz v14, :cond_0

    .line 55
    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v2, 0x1

    aget v2, v15, v2

    move/from16 v0, p2

    int-to-double v3, v0

    const-wide v6, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v3, v6

    double-to-int v3, v3

    move/from16 v0, p3

    int-to-double v6, v0

    const-wide v9, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v9

    double-to-int v4, v6

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->computeSampleSize(IIIIILcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;)I

    move-result v18

    .line 56
    .local v18, "sampleSize":I
    invoke-static {}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    .line 60
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, p2

    int-to-float v1, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v17, v1, v2

    .line 61
    .local v17, "maxSampleW":F
    move/from16 v0, p3

    int-to-float v1, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v16, v1, v2

    .line 63
    .local v16, "maxSampleH":F
    const/4 v1, 0x1

    aget v1, v15, v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    add-float v2, v2, v17

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/4 v1, 0x1

    aget v1, v15, v1

    int-to-float v1, v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_2

    .line 64
    sget-object v1, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "try to use sample size = 1"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 65
    const/16 v18, 0x1

    .line 68
    :cond_2
    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 70
    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move v11, v5

    invoke-static/range {v6 .. v12}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 72
    if-eqz v13, :cond_0

    .line 73
    if-eqz p4, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->setNewSize(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->computeBucketSize(I)V

    goto/16 :goto_0
.end method

.method static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "maxW"    # I
    .param p4, "maxH"    # I
    .param p5, "orientation"    # I
    .param p6, "pass"    # I

    .prologue
    .line 86
    const/4 v10, 0x0

    .line 87
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 89
    .local v12, "newBitmap":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "decodeBitmap: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", maxSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", pass: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 91
    const/16 v3, 0xa

    move/from16 v0, p6

    if-le v0, v3, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 125
    :goto_0
    return-object v3

    .line 95
    :cond_0
    invoke-static {p0, p1}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 96
    .local v13, "stream":Ljava/io/InputStream;
    if-nez v13, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 97
    :cond_1
    sget-object v3, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "opened input stream"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 101
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v13, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 102
    invoke-static {v13}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 103
    sget-object v3, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "closed input stream"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 105
    if-eqz v10, :cond_3

    .line 106
    sget-object v3, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "loaded bitmap: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 107
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v10, v0, v1, v2}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 108
    sget-object v3, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "resized: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 109
    if-eq v10, v12, :cond_2

    .line 110
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_2
    move-object v10, v12

    :cond_3
    :goto_1
    move-object v3, v10

    .line 125
    goto/16 :goto_0

    .line 115
    :catch_0
    move-exception v11

    .line 116
    .local v11, "error":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 117
    invoke-static {v13}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 118
    sget-object v3, Lcom/aviary/android/feather/library/utils/DecodeUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "closed input stream"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 119
    if-eqz v10, :cond_4

    .line 120
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_4
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    add-int/lit8 v9, p6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v3 .. v9}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_1
.end method

.method public static decodeImageBounds(Ljava/io/InputStream;[I)Z
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outSize"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 164
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 165
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 166
    const/4 v3, 0x0

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 167
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    .line 168
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, p1, v2

    .line 169
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v2, p1, v1

    .line 172
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 286
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 287
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 288
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 289
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 290
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 291
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 292
    return-object v0
.end method

.method static openContentInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 221
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 225
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static openFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 209
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 137
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 160
    :cond_0
    :goto_0
    return-object v2

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    .line 140
    .local v2, "stream":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    const-string/jumbo v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    :cond_2
    const-string/jumbo v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/android_asset/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/android_asset/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->openFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 153
    goto :goto_0

    :cond_4
    const-string/jumbo v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 155
    invoke-static {p0, p1}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->openContentInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 156
    goto :goto_0

    :cond_5
    const-string/jumbo v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    :cond_6
    invoke-static {p1}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->openRemoteInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method static openRemoteInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 237
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .local v3, "finalUrl":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 254
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 261
    .local v0, "code":I
    const/16 v5, 0x12d

    if-eq v0, v5, :cond_0

    const/16 v5, 0x12e

    if-eq v0, v5, :cond_0

    .line 262
    const/16 v5, 0x12f

    if-ne v0, v5, :cond_1

    .line 263
    :cond_0
    const-string/jumbo v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "newLocation":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->openRemoteInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 271
    .end local v0    # "code":I
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "finalUrl":Ljava/net/URL;
    .end local v4    # "newLocation":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v5, v6

    .line 240
    goto :goto_0

    .line 246
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "finalUrl":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 248
    goto :goto_0

    .line 255
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v2

    .line 256
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 257
    goto :goto_0

    .line 268
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "code":I
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 269
    :catch_3
    move-exception v2

    .line 270
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 271
    goto :goto_0
.end method
