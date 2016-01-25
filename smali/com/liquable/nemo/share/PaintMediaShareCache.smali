.class public Lcom/liquable/nemo/share/PaintMediaShareCache;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "PaintMediaShareCache.java"


# static fields
.field private static final THUMBNAIL_WIDTH_IN_DP:I = 0x64


# instance fields
.field private final cacheFile:Ljava/io/File;

.field private final defaultImageResId:I

.field private final mediaFile:Ljava/io/File;

.field private final paintMessage:Lcom/liquable/nemo/message/model/PaintMessage;

.field private final targetHeightPx:I

.field private final targetWidthPx:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/message/model/PaintMessage;II)V
    .locals 2
    .param p1, "paintMessage"    # Lcom/liquable/nemo/message/model/PaintMessage;
    .param p2, "targetWidthPx"    # I
    .param p3, "defaultImageResId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 36
    iput p2, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->targetWidthPx:I

    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->paintMessage:Lcom/liquable/nemo/message/model/PaintMessage;

    .line 38
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->mediaFile:Ljava/io/File;

    .line 39
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getThumbCacheLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    .line 40
    iput p3, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->defaultImageResId:I

    .line 41
    mul-int/lit16 v0, p2, 0x1e0

    div-int/lit16 v0, v0, 0x280

    iput v0, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->targetHeightPx:I

    .line 42
    return-void
.end method

.method private savePaintThumbnail(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    const/16 v4, 0x64

    :try_start_0
    invoke-static {p1, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    .line 122
    .local v3, "width":I
    mul-int/lit16 v4, v3, 0x1e0

    div-int/lit16 v4, v4, 0x280

    const/4 v5, 0x1

    invoke-static {p2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 128
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->paintMessage:Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v4}, Lcom/liquable/nemo/message/model/PaintMessage;->getDeprecatedThumbCacheLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 129
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 130
    .local v0, "deprecatedPaintCacheFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 134
    :cond_0
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v5, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/storage/NemoFileService;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 135
    .local v1, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->paintMessage:Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v4}, Lcom/liquable/nemo/message/model/PaintMessage;->getCacheFileCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "deprecatedPaintCacheFile":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getDefaultImageResId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->defaultImageResId:I

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 57
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/liquable/nemo/share/PaintMediaShareCache;

    .line 60
    .local v0, "other":Lcom/liquable/nemo/share/PaintMediaShareCache;
    iget-object v3, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->mediaFile:Ljava/io/File;

    if-nez v3, :cond_4

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/share/PaintMediaShareCache;->mediaFile:Ljava/io/File;

    if-eqz v3, :cond_5

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->mediaFile:Ljava/io/File;

    iget-object v4, v0, Lcom/liquable/nemo/share/PaintMediaShareCache;->mediaFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    if-nez v3, :cond_6

    .line 68
    iget-object v3, v0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    if-eqz v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    iget-object v4, v0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 79
    const/16 v0, 0x1f

    .line 80
    .local v0, "prime":I
    const/16 v1, 0xb

    .line 81
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->mediaFile:Ljava/io/File;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x155

    .line 82
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 83
    return v1

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->mediaFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_0

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "returnedBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/liquable/nemo/share/PaintMediaShareCache;->getDefaultImageResId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/liquable/nemo/share/PaintMediaShareCache;->getDefaultImageResId()I

    move-result v2

    .line 103
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    :cond_1
    iget v1, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->targetWidthPx:I

    iget v2, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->targetHeightPx:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    return-object v1

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->mediaFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->mediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/share/PaintMediaShareCache;->savePaintThumbnail(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 106
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 115
    iget v0, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->targetWidthPx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 116
    iget v0, p0, Lcom/liquable/nemo/share/PaintMediaShareCache;->targetHeightPx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 117
    return-void
.end method
