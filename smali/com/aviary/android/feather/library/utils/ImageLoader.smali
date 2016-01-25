.class public Lcom/aviary/android/feather/library/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;
    }
.end annotation


# static fields
.field static logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "ImageLoader"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/utils/ImageLoader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-void
.end method

.method private static computeSampleSize(Ljava/io/InputStream;DDILcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;Landroid/graphics/BitmapFactory$Options;)I
    .locals 11
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "d"    # D
    .param p3, "e"    # D
    .param p5, "orientation"    # I
    .param p6, "sizes"    # Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;
    .param p7, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 57
    const/4 v6, 0x1

    move-object/from16 v0, p7

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 58
    const/4 v6, 0x0

    move-object/from16 v0, p7

    invoke-static {p0, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 62
    if-eqz p5, :cond_0

    const/16 v6, 0xb4

    move/from16 v0, p5

    if-ne v0, v6, :cond_2

    .line 63
    :cond_0
    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 64
    .local v4, "w":D
    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v1, v6

    .line 70
    .local v1, "h":D
    :goto_0
    if-eqz p6, :cond_1

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->setOriginalSize(Ljava/lang/String;)V

    .line 72
    double-to-int v6, v4

    double-to-int v7, v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->setRealSize(II)V

    .line 75
    :cond_1
    div-double v6, v4, p1

    div-double v8, v1, p3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 76
    .local v3, "sampleSize":I
    sget-object v6, Lcom/aviary/android/feather/library/utils/ImageLoader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "computeSampleSize. sampleSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", original.size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "max.size:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "orientation:"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 78
    return v3

    .line 66
    .end local v1    # "h":D
    .end local v3    # "sampleSize":I
    .end local v4    # "w":D
    :cond_2
    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v6

    .line 67
    .restart local v4    # "w":D
    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v1, v6

    .restart local v1    # "h":D
    goto/16 :goto_0
.end method

.method public static getPluginItemBitmap(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/aviary/android/feather/library/services/PluginService$StickerType;
    .param p3, "maxW"    # I
    .param p4, "maxH"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    .line 94
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 95
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "stream":Ljava/io/InputStream;
    if-nez p0, :cond_0

    .line 100
    sget-object v1, Lcom/aviary/android/feather/library/utils/ImageLoader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Resources are NULL!"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 103
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/aviary/android/feather/library/utils/ImageLoader;->getStream(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    int-to-double v1, p3

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    int-to-double v3, p4

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static/range {v0 .. v7}, Lcom/aviary/android/feather/library/utils/ImageLoader;->computeSampleSize(Ljava/io/InputStream;DDILcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;Landroid/graphics/BitmapFactory$Options;)I

    move-result v1

    iput v1, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 107
    invoke-static {v0}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 108
    invoke-static {p0, p1, p2}, Lcom/aviary/android/feather/library/utils/ImageLoader;->getStream(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;

    move-result-object v0

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v9, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 118
    const/4 v1, 0x0

    invoke-static {v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 120
    if-eqz v8, :cond_3

    .line 121
    invoke-static {v8, p3, p4}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 122
    .local v10, "output":Landroid/graphics/Bitmap;
    if-eq v10, v8, :cond_1

    .line 123
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    move-object v8, v10

    .line 130
    .end local v10    # "output":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    return-object v8

    .line 110
    :cond_2
    sget-object v1, Lcom/aviary/android/feather/library/utils/ImageLoader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "stream is null"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 111
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_3
    sget-object v1, Lcom/aviary/android/feather/library/utils/ImageLoader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "bitmap is null"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static getStream(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;
    .locals 1
    .param p0, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .param p1, "itemName"    # Ljava/lang/String;
    .param p2, "stickerType"    # Lcom/aviary/android/feather/library/services/PluginService$StickerType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    instance-of v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;

    if-eqz v0, :cond_0

    .line 84
    check-cast p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;

    .end local p0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getStickerStream(Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 85
    .restart local p0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    :cond_0
    instance-of v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    if-eqz v0, :cond_1

    .line 86
    check-cast p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    .end local p0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->openThumbnail(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 88
    .restart local p0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
