.class public Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;
.super Ljava/lang/Object;
.source "ContentResolverDownloader.java"


# static fields
.field private static final logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "content-resolver-downloader"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-void
.end method

.method public static downloadAndExtract(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "destFolder"    # Ljava/io/File;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "stream":Ljava/io/InputStream;
    sget-object v1, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "downloadAndExtract: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 25
    packed-switch p3, :pswitch_data_0

    .line 30
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, v0, p2}, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->extractStream(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;)V

    .line 32
    return-void

    .line 27
    :pswitch_0
    invoke-static {p0, p1}, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->downloadEffect(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string/jumbo v2, "Cannot download the plugin content"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static downloadEffect(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    sget-object v3, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "downloadEffect: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".EffectsProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 44
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "proclist/1/effects/package"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 46
    .local v0, "filePackageUri":Landroid/net/Uri;
    sget-object v3, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "filePackageUri: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 50
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resolver: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 52
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    .line 55
    :cond_0
    sget-object v3, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "can\'t find the resolver"

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 56
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string/jumbo v4, "Cannot find the content resolver"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static extractStream(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "destFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "extractStream into: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 62
    invoke-static {p1, p2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->unzip(Ljava/io/InputStream;Ljava/io/File;)V

    .line 63
    return-void
.end method
