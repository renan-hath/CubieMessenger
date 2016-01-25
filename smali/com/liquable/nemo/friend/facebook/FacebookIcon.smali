.class public Lcom/liquable/nemo/friend/facebook/FacebookIcon;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "FacebookIcon.java"


# static fields
.field private static final _20_SECONDS:I = 0x4e20


# instance fields
.field public final fbuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fbuid"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->fbuid:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p1, "fbuid"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/fb_icon/%s.jpg"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0202a8

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 59
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;

    .line 62
    .local v0, "other":Lcom/liquable/nemo/friend/facebook/FacebookIcon;
    iget-object v3, p0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->fbuid:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 63
    iget-object v3, v0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->fbuid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->fbuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->fbuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 67
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 74
    const/16 v0, 0x1f

    .line 75
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 76
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->fbuid:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 77
    return v1

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->fbuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 82
    iget-object v8, p0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->fbuid:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v8

    sget-object v9, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 83
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 87
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookEnv;->getInstance()Lcom/liquable/nemo/facebook/FacebookEnv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/liquable/nemo/facebook/FacebookEnv;->getGraphApiUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/friend/facebook/FacebookIcon;->fbuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/picture"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 89
    .local v0, "connection":Ljava/net/URLConnection;
    const/16 v8, 0x4e20

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 90
    const/16 v8, 0x4e20

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 92
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 93
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v3, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 101
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 106
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v6    # "url":Ljava/net/URL;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 110
    :goto_0
    return-object v7

    .line 95
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_1
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 101
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 101
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 101
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v7

    .line 107
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v8

    goto :goto_0

    .line 100
    .restart local v0    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 97
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 95
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 116
    return-void
.end method
