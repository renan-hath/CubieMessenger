.class public Lcom/liquable/nemo/storage/NemoFileService;
.super Ljava/lang/Object;
.source "NemoFileService.java"


# static fields
.field private static final CAMERA_TEMP_JPG:Ljava/lang/String; = "camera_temp.jpg"

.field private static final DATA_FOLDER:Ljava/lang/String; = "data"

.field private static final TEMP_FOLDER:Ljava/lang/String; = "temp"


# instance fields
.field private final context:Landroid/content/Context;

.field private final deviceExternalStorage:Lcom/liquable/nemo/storage/DeviceExternalStorage;

.field private final internalDataDirectory:Ljava/io/File;

.field logger:Lcom/liquable/nemo/util/Logger;

.field final scannableLocalKeyPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/storage/DeviceExternalStorage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceExternalStorage"    # Lcom/liquable/nemo/storage/DeviceExternalStorage;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/storage/NemoFileService;->logger:Lcom/liquable/nemo/util/Logger;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/storage/NemoFileService;->scannableLocalKeyPath:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/liquable/nemo/storage/NemoFileService;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/liquable/nemo/storage/NemoFileService;->deviceExternalStorage:Lcom/liquable/nemo/storage/DeviceExternalStorage;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/storage/NemoFileService;->internalDataDirectory:Ljava/io/File;

    .line 77
    return-void
.end method

.method private final getRawContent(Ljava/lang/String;)Lcom/liquable/nemo/util/Optional;
    .locals 4
    .param p1, "assetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 186
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/storage/NemoFileService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 187
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/Optional;->of(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 191
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 193
    :goto_0
    return-object v2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/liquable/nemo/storage/NemoFileService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "getRawContent read from asset failed"

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 193
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
.end method

.method private static getSuffixByLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "split":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 41
    :cond_0
    const-string/jumbo v2, ""

    .line 54
    :goto_0
    return-object v2

    .line 44
    :cond_1
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 45
    .local v0, "lang":Ljava/lang/String;
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const-string/jumbo v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const-string/jumbo v2, "_zh_CN"

    goto :goto_0

    .line 49
    :cond_2
    const-string/jumbo v2, "_zh_TW"

    goto :goto_0

    .line 51
    :cond_3
    const-string/jumbo v2, "ja"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    const-string/jumbo v2, "_ja_JP"

    goto :goto_0

    .line 54
    :cond_4
    const-string/jumbo v2, ""

    goto :goto_0
.end method


# virtual methods
.method public copyDrawableResourceToLocal(Ljava/lang/String;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    .locals 5
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v3, p0, Lcom/liquable/nemo/storage/NemoFileService;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    .local v1, "resources":Landroid/content/res/Resources;
    const-string/jumbo v3, "drawable"

    iget-object v4, p0, Lcom/liquable/nemo/storage/NemoFileService;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "drawableId":I
    iget-object v3, p0, Lcom/liquable/nemo/storage/NemoFileService;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    .local v2, "sourceBitmap":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 88
    return-void
.end method

.method public copyFileToLocalKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    .locals 2
    .param p1, "localFile"    # Ljava/io/File;
    .param p2, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p2, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 93
    return-void
.end method

.method public copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    .locals 3
    .param p1, "fromLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p2, "toLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 98
    return-void
.end method

.method public copyUriToLocalKeyPath(Landroid/net/Uri;Lcom/liquable/nemo/storage/LocalKeyPath;)Z
    .locals 6
    .param p1, "fromUri"    # Landroid/net/Uri;
    .param p2, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/liquable/nemo/storage/NemoFileService;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 104
    invoke-virtual {p2, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 105
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .local v3, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v2, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    const/4 v4, 0x1

    .line 110
    :try_start_2
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 117
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "output":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 110
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v4, p0, Lcom/liquable/nemo/storage/NemoFileService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v5, "copy uri to file failed"

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 117
    const/4 v4, 0x0

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4
.end method

.method public createFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;
    .locals 2
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 130
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/storage/NemoFileService;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public createFile(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 125
    :cond_0
    return-object p1
.end method

.method public delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V
    .locals 1
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 134
    invoke-virtual {p1, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 135
    return-void
.end method

.method public final getDefaultStickerPackagesJson()Lcom/liquable/nemo/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sticker_packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/storage/NemoFileService;->getSuffixByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getRawContent(Ljava/lang/String;)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultStickerRootJson()Lcom/liquable/nemo/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const-string/jumbo v0, "sticker_root.json"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getRawContent(Ljava/lang/String;)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getExternalKeyPathFile(Lcom/liquable/nemo/storage/ExternalLocalKeyPath;)Ljava/io/File;
    .locals 1
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "relativeKeyPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/storage/NemoFileService;->deviceExternalStorage:Lcom/liquable/nemo/storage/DeviceExternalStorage;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public getInternalKeyPathFile(Lcom/liquable/nemo/storage/InternalLocalKeyPath;)Ljava/io/File;
    .locals 1
    .param p1, "internalLocalKeyPath"    # Lcom/liquable/nemo/storage/InternalLocalKeyPath;

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/liquable/nemo/storage/InternalLocalKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getInternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getInternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/liquable/nemo/storage/NemoFileService;->internalDataDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 164
    :cond_0
    return-object v0
.end method

.method public getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;
    .locals 1
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 168
    invoke-virtual {p1, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPathFileSize(Lcom/liquable/nemo/storage/LocalKeyPath;)J
    .locals 2
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 172
    invoke-virtual {p1, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrefBackupFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "ownerUid"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/liquable/nemo/storage/NemoFileService;->deviceExternalStorage:Lcom/liquable/nemo/storage/DeviceExternalStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "prefs.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSqliteBackupFile(Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;
    .locals 5
    .param p1, "ownerUid"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 197
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy_MM_dd\'.dump\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/storage/NemoFileService;->deviceExternalStorage:Lcom/liquable/nemo/storage/DeviceExternalStorage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method public getTempCameraPhoto()Ljava/io/File;
    .locals 1

    .prologue
    .line 207
    const-string/jumbo v0, "camera_temp.jpg"

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/liquable/nemo/storage/NemoFileService;->deviceExternalStorage:Lcom/liquable/nemo/storage/DeviceExternalStorage;

    const-string/jumbo v2, "temp"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTempFolder()Ljava/io/File;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/liquable/nemo/storage/NemoFileService;->deviceExternalStorage:Lcom/liquable/nemo/storage/DeviceExternalStorage;

    const-string/jumbo v1, "temp"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public isAllLocalKeyPathFileExist(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "localKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 224
    .local v0, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {v0, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 228
    .end local v0    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLocalKeyPathFileExist(Lcom/liquable/nemo/storage/LocalKeyPath;)Z
    .locals 2
    .param p1, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 232
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/storage/LocalKeyPath;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/storage/NemoFileService;->isAllLocalKeyPathFileExist(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isUnderScannableLocalKeyPath(Ljava/io/File;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 236
    iget-object v2, p0, Lcom/liquable/nemo/storage/NemoFileService;->scannableLocalKeyPath:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 237
    .local v1, "folderLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {v1, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 239
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    iget-object v2, p0, Lcom/liquable/nemo/storage/NemoFileService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can scan file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 241
    const/4 v2, 0x1

    .line 245
    .end local v0    # "folder":Ljava/io/File;
    .end local v1    # "folderLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    return v2

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/storage/NemoFileService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can not scan file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 245
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public listAllBackups(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .param p1, "ownerUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 249
    iget-object v1, p0, Lcom/liquable/nemo/storage/NemoFileService;->deviceExternalStorage:Lcom/liquable/nemo/storage/DeviceExternalStorage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 252
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "dump"

    aput-object v2, v1, v4

    invoke-static {v0, v1, v4}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public setupFoldersAndPlaceNoMediaFile()V
    .locals 7

    .prologue
    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v2, "noMediaLocalKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/cubie_paint/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/cubie_audio/s/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/cubie_picture/s"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/cubie_video/s"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/cubie_voice/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/temp/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/map/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/chatgroup/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/cubie_wallpaper/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/sticker/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/fb_icon/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/twitter_icon/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/custom_sticker/"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 275
    .local v1, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {v1, p0}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 276
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 277
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .local v3, "nomedia":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v5

    goto :goto_0

    .line 284
    .end local v0    # "folder":Ljava/io/File;
    .end local v1    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v3    # "nomedia":Ljava/io/File;
    :cond_1
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/.nomedia"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 285
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isHidePicturesFromGallery()Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/cubie_picture/.nomedia"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 288
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/storage/NemoFileService;->scannableLocalKeyPath:Ljava/util/List;

    new-instance v5, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v6, "cubie/cubie_picture/"

    invoke-direct {v5, v6}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v4, p0, Lcom/liquable/nemo/storage/NemoFileService;->scannableLocalKeyPath:Ljava/util/List;

    new-instance v5, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v6, "cubie/cubie_video/"

    invoke-direct {v5, v6}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v4, p0, Lcom/liquable/nemo/storage/NemoFileService;->scannableLocalKeyPath:Ljava/util/List;

    new-instance v5, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v6, "cubie/cubie_audio/"

    invoke-direct {v5, v6}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method
