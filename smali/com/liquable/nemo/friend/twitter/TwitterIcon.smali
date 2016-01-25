.class public Lcom/liquable/nemo/friend/twitter/TwitterIcon;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "TwitterIcon.java"


# instance fields
.field public final imageUrl:Ljava/net/URL;

.field private final twitterId:J


# direct methods
.method public constructor <init>(Ljava/net/URL;J)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/net/URL;
    .param p2, "twitterId"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->imageUrl:Ljava/net/URL;

    .line 37
    iput-wide p2, p0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->twitterId:J

    .line 38
    return-void
.end method

.method private createIconLocalKeyPath(J)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 5
    .param p1, "twitterId"    # J

    .prologue
    .line 41
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/twitter_icon/%d.jpg"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0202a8

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 55
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;

    .line 58
    .local v0, "other":Lcom/liquable/nemo/friend/twitter/TwitterIcon;
    iget-wide v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->twitterId:J

    iget-wide v5, v0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->twitterId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 59
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 7

    .prologue
    .line 66
    const/16 v0, 0x1f

    .line 67
    .local v0, "prime":I
    const/16 v1, 0xb

    .line 68
    .local v1, "result":I
    iget-wide v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->twitterId:J

    iget-wide v4, p0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->twitterId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit16 v1, v2, 0x155

    .line 69
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v5, p0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->imageUrl:Ljava/net/URL;

    if-nez v5, :cond_0

    .line 96
    :goto_0
    return-object v4

    .line 78
    :cond_0
    iget-wide v5, p0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->twitterId:J

    invoke-direct {p0, v5, v6}, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->createIconLocalKeyPath(J)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 79
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 81
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/friend/twitter/TwitterIcon;->imageUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 82
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v3, "outputStream":Ljava/io/OutputStream;
    invoke-static {v2, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 102
    return-void
.end method
