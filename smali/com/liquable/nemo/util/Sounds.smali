.class public Lcom/liquable/nemo/util/Sounds;
.super Ljava/lang/Object;
.source "Sounds.java"


# static fields
.field private static final NOTIFICATION_SOUND_FILENAME:Ljava/lang/String; = "cubie_ringtone_meadowlark.mp3"

.field private static final RINGTONE_ASSET_FOLDER_NAME:Ljava/lang/String; = "ringtones"

.field private static final SILENT_NOTIFICATION_SOUND:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/liquable/nemo/util/Sounds;->getNotificationFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/Sounds;->copyCubieRingtone(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static copyCubieRingtone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 29
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtones"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "inPath":Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/util/Sounds;->getNotificationFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 31
    .local v4, "outFile":Ljava/io/File;
    invoke-static {v4}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 39
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 40
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 42
    .end local v1    # "inPath":Ljava/lang/String;
    .end local v4    # "outFile":Ljava/io/File;
    :goto_0
    return-void

    .line 34
    .restart local v1    # "inPath":Ljava/lang/String;
    .restart local v4    # "outFile":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 35
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v0, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 37
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/liquable/nemo/util/Sounds;->triggerMediaScanner(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 40
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 41
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 38
    .end local v1    # "inPath":Ljava/lang/String;
    .end local v4    # "outFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 39
    :goto_1
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 40
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 40
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v5

    .line 39
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "inPath":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 38
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static copyRingtones(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lcom/liquable/nemo/util/Sounds$1;

    invoke-direct {v0}, Lcom/liquable/nemo/util/Sounds$1;-><init>()V

    invoke-static {p0, v0}, Lcom/liquable/nemo/background/BackgroundIntentService;->run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V

    .line 78
    return-void
.end method

.method public static findNotificationSound(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getNotificationSound()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 83
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    .local v0, "notificationSoundUri":Landroid/net/Uri;
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const/4 v0, 0x0

    .line 98
    .end local v0    # "notificationSoundUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 88
    .restart local v0    # "notificationSoundUri":Landroid/net/Uri;
    :cond_1
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-static {p0, v0}, Lcom/liquable/nemo/android/provider/Medias;->isFileExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-static {p0}, Lcom/liquable/nemo/util/Sounds;->copyRingtones(Landroid/content/Context;)V

    .line 98
    .end local v0    # "notificationSoundUri":Landroid/net/Uri;
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static getNotificationFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 103
    .local v0, "notificationDirectory":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static triggerMediaScanner(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v0, Lcom/liquable/nemo/RingtoneMediaScannerClient;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/RingtoneMediaScannerClient;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "mediaScan":Lcom/liquable/nemo/RingtoneMediaScannerClient;
    invoke-virtual {v0, p0}, Lcom/liquable/nemo/RingtoneMediaScannerClient;->startScan(Ljava/lang/String;)V

    .line 112
    return-void
.end method
