.class public Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;
.super Ljava/lang/Object;
.source "CustomStickerDaemon.java"


# static fields
.field private static final MAX_CUSTOM_STICKERS:I = 0x3e8

.field private static logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/android/service/FileTransferManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileTransferManager"    # Lcom/liquable/nemo/android/service/FileTransferManager;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->downloadCustomStickerFiles(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private checkAndCreateAnimatedFiles(Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;Ljava/io/File;IILjava/util/List;)Z
    .locals 7
    .param p1, "customStickerEffect"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .param p2, "stickerFile"    # Ljava/io/File;
    .param p3, "stickerWidth"    # I
    .param p4, "stickerHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;",
            "Ljava/io/File;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "animatedKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    const/4 v5, 0x1

    .line 81
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, p5}, Lcom/liquable/nemo/storage/NemoFileService;->isAllLocalKeyPathFileExist(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 99
    :goto_0
    return v3

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->context:Landroid/content/Context;

    invoke-virtual {p1, v3, p2, p3, p4}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->createAnimatedFiles(Landroid/content/Context;Ljava/io/File;II)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "animatedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 91
    :try_start_0
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 92
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 91
    invoke-virtual {v6, v3, v4}, Lcom/liquable/nemo/storage/NemoFileService;->copyFileToLocalKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "copy animated file failed"

    invoke-virtual {v3, v4, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    const/4 v3, 0x0

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    move v3, v5

    .line 99
    goto :goto_0
.end method

.method private createAnimatedFiles(Ljava/util/ArrayList;Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 7
    .param p2, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "animatedFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p2}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getAnimatedKeyPaths()Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "animatedKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 144
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 145
    .local v4, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 147
    .local v2, "file":Ljava/io/File;
    :try_start_0
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v2, v4}, Lcom/liquable/nemo/storage/NemoFileService;->copyFileToLocalKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "copy animated file failed"

    invoke-virtual {v5, v6, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    new-instance v5, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;

    invoke-direct {v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;-><init>()V

    throw v5

    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :cond_0
    return-void
.end method

.method private createCustomStickerAndCopyStickerFile(Ljava/io/File;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .locals 7
    .param p1, "tempStickerFile"    # Ljava/io/File;
    .param p2, "customStickerEffect"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    .local v1, "decodeFile":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v4, p2, v5}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->create(Ljava/lang/String;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;Landroid/graphics/Bitmap$CompressFormat;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    move-result-object v0

    .line 164
    .local v0, "customSticker":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 166
    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v5

    .line 164
    invoke-static {v4, v1, v5}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v3

    .line 167
    .local v3, "result":Z
    if-nez v3, :cond_1

    .line 168
    new-instance v4, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;

    invoke-direct {v4}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;-><init>()V

    throw v4

    .line 171
    .end local v0    # "customSticker":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .end local v3    # "result":Z
    :cond_0
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v4, p2, v5}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->create(Ljava/lang/String;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;Landroid/graphics/Bitmap$CompressFormat;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    move-result-object v0

    .line 175
    .restart local v0    # "customSticker":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    :try_start_0
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 176
    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    .line 175
    invoke-virtual {v4, p1, v5}, Lcom/liquable/nemo/storage/NemoFileService;->copyFileToLocalKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_1
    return-object v0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;

    invoke-direct {v4}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;-><init>()V

    throw v4
.end method

.method private downloadCustomStickerFiles(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "customStickerCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "notExists":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;>;"
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 222
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/liquable/nemo/storage/LocalKeyPath;

    new-instance v4, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$2;-><init>(Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;Ljava/util/List;Ljava/lang/String;Landroid/util/Pair;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 242
    return-void
.end method

.method private generateThumbnail(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 9
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 248
    iget-object v5, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->context:Landroid/content/Context;

    const/16 v6, 0x40

    invoke-static {v5, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    .line 249
    .local v4, "thumbWidth":I
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getAnimatedKeyPaths()Ljava/util/List;

    move-result-object v0

    .line 251
    .local v0, "animatedKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 253
    .local v2, "stickerLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 254
    .local v1, "file":Ljava/io/File;
    new-instance v5, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;-><init>(Ljava/lang/String;I)V

    invoke-static {v5, v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Lcom/liquable/nemo/util/imagesrc/ImageSrc;I)Lcom/liquable/nemo/util/Optional;

    move-result-object v5

    .line 255
    invoke-virtual {v5}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 261
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stickerLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .local v3, "thumbBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v3, :cond_1

    .line 262
    new-instance v5, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;

    invoke-direct {v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;-><init>()V

    throw v5

    .line 257
    .end local v3    # "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v6, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/storage/LocalKeyPath;

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 258
    invoke-virtual {v5, v7}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v5

    .line 259
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v8}, Lcom/liquable/nemo/util/imagesrc/ImageFileSrc;-><init>(Ljava/lang/String;I)V

    .line 257
    invoke-static {v6, v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Lcom/liquable/nemo/util/imagesrc/ImageSrc;I)Lcom/liquable/nemo/util/Optional;

    move-result-object v5

    .line 259
    invoke-virtual {v5}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .restart local v3    # "thumbBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 265
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 267
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getThumbKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v6

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v6

    .line 265
    invoke-static {v5, v3, v6}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 269
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    sget-object v6, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 270
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getCustomStickerCode()Ljava/lang/String;

    move-result-object v7

    .line 269
    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileReady(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private uploadThenSaveCustomSticker(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .locals 8
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 355
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 356
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 357
    .local v4, "uploadSuccessFlag":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getRemoteKeyPath(I)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    .line 359
    .local v3, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    iget-object v5, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v6

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 360
    invoke-virtual {v6, v7}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$3;

    invoke-direct {v7, p0, v2, v4}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$3;-><init>(Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 359
    invoke-virtual {v5, v6, v3, v7}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 378
    const-wide/16 v5, 0x1e

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 379
    .local v0, "await":Z
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 380
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    invoke-virtual {v5, p1}, Lcom/liquable/nemo/db/CustomStickerDao;->create(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    move-result-object v5

    return-object v5

    .line 382
    :cond_0
    new-instance v5, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;

    invoke-direct {v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v0    # "await":Z
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 385
    new-instance v5, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;

    invoke-direct {v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;-><init>()V

    throw v5
.end method


# virtual methods
.method public allowCreateCustomSticker()Z
    .locals 3

    .prologue
    .line 48
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/CustomStickerDao;->listAll()Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/custom/model/CustomSticker;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public asyncCheckStickerFileExistsAndDownload(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Z
    .locals 7
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getKeyPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v3, "notExists":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "keyPath":Ljava/lang/String;
    new-instance v2, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    invoke-direct {v2, v0}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "localKeyPath":Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v2}, Lcom/liquable/nemo/storage/NemoFileService;->isLocalKeyPathFileExist(Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    new-instance v5, Landroid/util/Pair;

    .line 63
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0    # "keyPath":Ljava/lang/String;
    .end local v2    # "localKeyPath":Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    const/4 v4, 0x1

    .line 72
    :goto_1
    return v4

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getCustomStickerCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->downloadCustomStickerFiles(Ljava/lang/String;Ljava/util/List;)V

    .line 72
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public checkAndCreateAnimatedFilesFromMessage(Lcom/liquable/nemo/message/model/CustomStickerMessage;)Z
    .locals 6
    .param p1, "customStickerMessage"    # Lcom/liquable/nemo/message/model/CustomStickerMessage;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->fromMessage(Lcom/liquable/nemo/message/model/CustomStickerMessage;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getLocalKeyPaths()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/storage/LocalKeyPath;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 105
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getWidth()I

    move-result v3

    .line 106
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getHeight()I

    move-result v4

    .line 107
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getAnimatedKeyPaths()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->checkAndCreateAnimatedFiles(Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;Ljava/io/File;IILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public checkFileExistsAndDownload(Lcom/liquable/nemo/message/model/CustomStickerMessage;)Z
    .locals 7
    .param p1, "customStickerMessage"    # Lcom/liquable/nemo/message/model/CustomStickerMessage;

    .prologue
    .line 111
    const/4 v0, 0x1

    .line 112
    .local v0, "allExists":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "fileKeyPaths":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getStickerFileKeyPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectFileKeyPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 117
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/storage/NemoFileService;->isLocalKeyPathFileExist(Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-virtual {v6, p1, v3, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 121
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    :cond_1
    return v0
.end method

.method public create(Ljava/io/File;Ljava/util/ArrayList;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .locals 2
    .param p1, "tempStickerFile"    # Ljava/io/File;
    .param p3, "customStickerEffect"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;",
            ")",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "animatedFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-direct {p0, p1, p3}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->createCustomStickerAndCopyStickerFile(Ljava/io/File;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    move-result-object v0

    .line 134
    .local v0, "customSticker":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    invoke-direct {p0, p2, v0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->createAnimatedFiles(Ljava/util/ArrayList;Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    .line 135
    invoke-direct {p0, v0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->generateThumbnail(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->uploadThenSaveCustomSticker(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    move-result-object v1

    return-object v1
.end method

.method public delete(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 1
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 185
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/CustomStickerDao;->delete(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    .line 186
    return-void
.end method

.method public downloadCustomStickerEffect(Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)V
    .locals 7
    .param p1, "customStickerEffect"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getKeyPaths()Ljava/util/List;

    move-result-object v1

    .line 190
    .local v1, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, "keyPath":Ljava/lang/String;
    new-instance v2, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    invoke-direct {v2, v0}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, "localKeyPath":Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v2}, Lcom/liquable/nemo/storage/NemoFileService;->isLocalKeyPathFileExist(Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 197
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    .line 199
    .local v3, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    iget-object v5, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    new-instance v6, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$1;

    invoke-direct {v6, p0, v0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon$1;-><init>(Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v2, v6}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    goto :goto_0

    .line 217
    .end local v0    # "keyPath":Ljava/lang/String;
    .end local v2    # "localKeyPath":Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    .end local v3    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    :cond_1
    return-void
.end method

.method public getTempFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 274
    const-string/jumbo v1, "custom_sticker.png"

    invoke-static {v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;->createTempLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    move-result-object v0

    .line 276
    .local v0, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public listAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/CustomStickerDao;->listAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadThumb(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v10, 0x0

    .line 284
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getThumbKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v9

    .line 285
    .local v9, "thumbKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v9, v0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v7

    .line 286
    .local v7, "file":Ljava/io/File;
    invoke-static {v7}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->context:Landroid/content/Context;

    .line 289
    invoke-static {v2, p2}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->context:Landroid/content/Context;

    .line 290
    invoke-static {v3, p3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    .line 287
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    .line 291
    .local v6, "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v6}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v6}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 312
    .end local v6    # "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :goto_0
    return-object v0

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->asyncCheckStickerFileExistsAndDownload(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v10

    .line 297
    goto :goto_0

    .line 300
    :cond_1
    invoke-static {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->fromCustomSticker(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v1

    .line 301
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 302
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getWidth()I

    move-result v3

    .line 303
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getHeight()I

    move-result v4

    .line 304
    invoke-virtual {p1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getAnimatedKeyPaths()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    .line 300
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->checkAndCreateAnimatedFiles(Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;Ljava/io/File;IILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    :try_start_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->generateThumbnail(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    :try_end_0
    .catch Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v10

    .line 312
    goto :goto_0

    .line 307
    :catch_0
    move-exception v8

    .local v8, "ignore":Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;
    move-object v0, v10

    .line 308
    goto :goto_0
.end method

.method public save(Lcom/liquable/nemo/message/model/CustomStickerMessage;)Z
    .locals 18
    .param p1, "customStickerMessage"    # Lcom/liquable/nemo/message/model/CustomStickerMessage;

    .prologue
    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getLocalKeyPaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 317
    .local v17, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/storage/NemoFileService;->isLocalKeyPathFileExist(Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 318
    const/4 v2, 0x0

    .line 350
    .end local v17    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    return v2

    .line 321
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getAnimatedKeyPaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 322
    .local v14, "animatedLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, v14}, Lcom/liquable/nemo/storage/NemoFileService;->isLocalKeyPathFileExist(Lcom/liquable/nemo/storage/LocalKeyPath;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 323
    const/4 v2, 0x0

    goto :goto_0

    .line 327
    .end local v14    # "animatedLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getKeyPaths()Ljava/util/List;

    move-result-object v16

    .line 329
    .local v16, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    const/4 v2, 0x0

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getCustomStickerCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 331
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getWidth()I

    move-result v6

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getHeight()I

    move-result v7

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getFirstEffectKeyPath()Ljava/lang/String;

    move-result-object v8

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getSecondEffectKeyPath()Ljava/lang/String;

    move-result-object v9

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectOffsetX()I

    move-result v10

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectOffsetY()I

    move-result v11

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectWidth()I

    move-result v12

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectHeight()I

    move-result v13

    invoke-direct/range {v1 .. v13}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 342
    .local v1, "customSticker":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/db/CustomStickerDao;->create(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .line 345
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->generateThumbnail(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    :try_end_0
    .catch Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const/4 v2, 0x1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v15

    .line 347
    .local v15, "ignore":Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;
    const/4 v2, 0x0

    goto :goto_0
.end method
