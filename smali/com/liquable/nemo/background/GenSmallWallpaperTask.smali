.class public Lcom/liquable/nemo/background/GenSmallWallpaperTask;
.super Ljava/lang/Object;
.source "GenSmallWallpaperTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final debugLogger:Lcom/liquable/nemo/util/Logger;

.field private static final serialVersionUID:J = 0x37eaffc675287fe2L


# instance fields
.field private final chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/liquable/nemo/background/GenSmallWallpaperTask;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 29
    return-void
.end method


# virtual methods
.method public runInBackground(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    .line 33
    sget-object v8, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "chatGroup:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v10}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 34
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v9, p0, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getWallpaperFile(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/io/File;

    move-result-object v7

    .line 35
    .local v7, "wallpaperFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 36
    .local v5, "smallWallpaperFile":Ljava/io/File;
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v9, p0, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/group/model/ChatGroupManager;->hasSetSpecificWallpaper(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 37
    iget-object v8, p0, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v8}, Lcom/liquable/nemo/group/model/ChatGroup;->getBackgroundFileName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v8

    sget-object v9, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 38
    invoke-virtual {v8, v9}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v5

    .line 46
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    if-nez v5, :cond_3

    .line 70
    :cond_1
    :goto_1
    return-void

    .line 40
    :cond_2
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getDefaultWallpaperFileName()Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "wallpaperBaseNameOrCode":Ljava/lang/String;
    invoke-static {v6}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->isDefaultWallpaper(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 42
    invoke-static {v11, v6}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v8

    sget-object v9, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 43
    invoke-virtual {v8, v9}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v5

    goto :goto_0

    .line 49
    .end local v6    # "wallpaperBaseNameOrCode":Ljava/lang/String;
    :cond_3
    sget-object v8, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wallpaperFile:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x64

    invoke-static {v8, v9, v10}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;II)Lcom/liquable/nemo/util/Optional;

    move-result-object v4

    .line 53
    .local v4, "optionalBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v8

    if-nez v8, :cond_4

    .line 54
    sget-object v8, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v9, "image decode failed"

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 58
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 60
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v8, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "write scaled down image to:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 61
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x3c

    invoke-virtual {v0, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 68
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 69
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    sget-object v8, Lcom/liquable/nemo/background/GenSmallWallpaperTask;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ioexception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 68
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 67
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 68
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v8

    .line 67
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 63
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
