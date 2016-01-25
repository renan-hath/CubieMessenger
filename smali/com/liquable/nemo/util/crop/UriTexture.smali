.class public Lcom/liquable/nemo/util/crop/UriTexture;
.super Lcom/liquable/nemo/util/crop/Texture;
.source "UriTexture.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x4e20

.field public static final HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

.field public static final MAX_RESOLUTION:I = 0x400

.field private static final MAX_RESOLUTION_A:I = 0x400

.field private static final MAX_RESOLUTION_B:I = 0x400

.field public static final SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private static final TAG:Ljava/lang/String; = "UriTexture"

.field public static final URI_CACHE:Ljava/lang/String;

.field private static final USER_AGENT:Ljava/lang/String; = "Cooliris-ImageDownload"


# instance fields
.field protected mCacheId:J

.field private mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

.field protected mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v3, 0x4e20

    .line 297
    const-string/jumbo v2, "hires-image-cache"

    invoke-static {v2}, Lcom/liquable/nemo/util/crop/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/liquable/nemo/util/crop/UriTexture;->URI_CACHE:Ljava/lang/String;

    .line 309
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 310
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 311
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 312
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 313
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 314
    const-string/jumbo v2, "Cooliris-ImageDownload"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 315
    sput-object v0, Lcom/liquable/nemo/util/crop/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    .line 318
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v2, Lcom/liquable/nemo/util/crop/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 319
    sget-object v2, Lcom/liquable/nemo/util/crop/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 325
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/liquable/nemo/util/crop/UriTexture;->URI_CACHE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "uri_cache":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 327
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/Texture;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mUri:Ljava/lang/String;

    .line 331
    return-void
.end method

.method private static computeSampleSize(Ljava/io/InputStream;II)I
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "maxResolutionX"    # I
    .param p2, "maxResolutionY"    # I

    .prologue
    .line 58
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 59
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 61
    mul-int v0, p1, p2

    .line 62
    .local v0, "maxNumOfPixels":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 63
    .local v1, "minSideLength":I
    invoke-static {v2, v1, v0}, Lcom/liquable/nemo/util/crop/Utils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    return v3
.end method

.method public static final createFilePathFromCrc64(JI)Ljava/lang/String;
    .locals 2
    .param p0, "crc64"    # J
    .param p2, "maxResolution"    # I

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/liquable/nemo/util/crop/UriTexture;->URI_CACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createFromCache(JI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "crc64"    # J
    .param p2, "maxResolution"    # I

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "file":Ljava/lang/String;
    const/4 v0, 0x0

    .line 74
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 75
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 76
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 77
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 78
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_0

    .line 79
    invoke-static {p0, p1, p2}, Lcom/liquable/nemo/util/crop/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 84
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v4

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static final createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "maxResolutionX"    # I
    .param p3, "maxResolutionY"    # I
    .param p4, "cacheId"    # J
    .param p6, "connectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 97
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 98
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 99
    const-wide/16 v2, 0x0

    .line 100
    .local v2, "crc64":J
    const/4 v0, 0x0

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v7, "content"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    move-wide v2, p4

    .line 107
    :goto_0
    invoke-static {v2, v3, p2}, Lcom/liquable/nemo/util/crop/UriTexture;->createFromCache(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    move-object v7, v0

    .line 163
    :goto_1
    return-object v7

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/liquable/nemo/util/crop/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 111
    :cond_1
    const-string/jumbo v7, "content"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "file://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_2
    const/4 v4, 0x1

    .line 114
    .local v4, "local":Z
    :goto_2
    const/4 v1, 0x0

    .line 115
    .local v1, "bufferedInput":Ljava/io/BufferedInputStream;
    const-string/jumbo v7, "content"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "file"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 117
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    .end local v1    # "bufferedInput":Ljava/io/BufferedInputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 118
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x4000

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 125
    .restart local v1    # "bufferedInput":Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v1, :cond_a

    .line 126
    invoke-static {v1, p2, p3}, Lcom/liquable/nemo/util/crop/UriTexture;->computeSampleSize(Ljava/io/InputStream;II)I

    move-result v7

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 132
    const/4 v1, 0x0

    .line 133
    const-string/jumbo v7, "content"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "file"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 135
    :cond_4
    new-instance v1, Ljava/io/BufferedInputStream;

    .end local v1    # "bufferedInput":Ljava/io/BufferedInputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 136
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x4000

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 143
    .restart local v1    # "bufferedInput":Ljava/io/BufferedInputStream;
    :goto_4
    if-eqz v1, :cond_5

    .line 144
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 145
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 146
    new-instance v6, Lcom/liquable/nemo/util/crop/UriTexture$1;

    const-string/jumbo v7, "BitmapTimeoutThread"

    invoke-direct {v6, v7, v5}, Lcom/liquable/nemo/util/crop/UriTexture$1;-><init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    .line 155
    .local v6, "timeoutThread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 157
    const/4 v7, 0x0

    invoke-static {v1, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .end local v6    # "timeoutThread":Ljava/lang/Thread;
    :cond_5
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x1

    if-gt v7, v8, :cond_6

    if-nez v4, :cond_7

    :cond_6
    if-eqz v0, :cond_7

    .line 161
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v7, p2, v7

    invoke-static {v2, v3, v0, v7}, Lcom/liquable/nemo/util/crop/UriTexture;->writeToCache(JLandroid/graphics/Bitmap;I)V

    :cond_7
    move-object v7, v0

    .line 163
    goto/16 :goto_1

    .line 111
    .end local v1    # "bufferedInput":Ljava/io/BufferedInputStream;
    .end local v4    # "local":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 121
    .restart local v1    # "bufferedInput":Ljava/io/BufferedInputStream;
    .restart local v4    # "local":Z
    :cond_9
    invoke-static {p1, p6}, Lcom/liquable/nemo/util/crop/UriTexture;->createInputStreamFromRemoteUrl(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)Ljava/io/BufferedInputStream;

    move-result-object v1

    goto :goto_3

    .line 128
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 139
    :cond_b
    invoke-static {p1, p6}, Lcom/liquable/nemo/util/crop/UriTexture;->createInputStreamFromRemoteUrl(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)Ljava/io/BufferedInputStream;

    move-result-object v1

    goto :goto_4
.end method

.method private static final createInputStreamFromRemoteUrl(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)Ljava/io/BufferedInputStream;
    .locals 12
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "connectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .prologue
    const/4 v8, 0x0

    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "contentInput":Ljava/io/InputStream;
    if-nez p1, :cond_2

    .line 171
    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v7

    .line 172
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 173
    .local v0, "conn":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 174
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 199
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v7    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 200
    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1000

    invoke-direct {v8, v1, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 202
    :cond_1
    :goto_1
    return-object v8

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "UriTexture"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Request failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 182
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v9, Lcom/liquable/nemo/util/crop/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    invoke-direct {v5, p1, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 183
    .local v5, "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 185
    .local v6, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v4, 0x0

    .line 187
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 188
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 189
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_0

    .line 192
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 194
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v2

    .line 195
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "UriTexture"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Request failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static invalidateCache(JI)V
    .locals 4
    .param p0, "crc64"    # J
    .param p2, "maxResolution"    # I

    .prologue
    .line 207
    invoke-static {p0, p1, p2}, Lcom/liquable/nemo/util/crop/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    .line 210
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "fileC":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1    # "fileC":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isCached(JI)Z
    .locals 5
    .param p0, "crc64"    # J
    .param p2, "maxResolution"    # I

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "file":Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-eqz v3, :cond_0

    .line 222
    invoke-static {p0, p1, p2}, Lcom/liquable/nemo/util/crop/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v1

    .line 224
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v2, 0x1

    .line 230
    :cond_0
    :goto_0
    return v2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method public static writeHttpDataInDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p1}, Lcom/liquable/nemo/util/crop/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    .line 237
    .local v4, "crc64":J
    const/16 v0, 0x400

    invoke-static {v4, v5, v0}, Lcom/liquable/nemo/util/crop/UriTexture;->isCached(JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/16 v2, 0x400

    const/16 v3, 0x400

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/liquable/nemo/util/crop/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 248
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/16 v0, 0x400

    invoke-static {v4, v5, v0}, Lcom/liquable/nemo/util/crop/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, "fileString":Ljava/lang/String;
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 256
    .local v12, "newPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v11, "newFile":Ljava/io/File;
    invoke-static {v9, v11}, Lcom/liquable/nemo/util/crop/Utils;->Copy(Ljava/io/File;Ljava/io/File;)V

    .line 262
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileString":Ljava/lang/String;
    .end local v11    # "newFile":Ljava/io/File;
    .end local v12    # "newPath":Ljava/lang/String;
    :goto_1
    return-object v12

    .line 241
    :catch_0
    move-exception v8

    .line 242
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    const/4 v12, 0x0

    goto :goto_1

    .line 243
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 244
    .local v8, "e":Ljava/io/IOException;
    const/4 v12, 0x0

    goto :goto_1

    .line 245
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 246
    .local v8, "e":Ljava/net/URISyntaxException;
    const/4 v12, 0x0

    goto :goto_1

    .line 255
    .end local v8    # "e":Ljava/net/URISyntaxException;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fileString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "/"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 260
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 261
    .end local v9    # "file":Ljava/io/File;
    :catch_3
    move-exception v8

    .line 262
    .local v8, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public static writeToCache(JLandroid/graphics/Bitmap;I)V
    .locals 8
    .param p0, "crc64"    # J
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "maxResolution"    # I

    .prologue
    .line 267
    invoke-static {p0, p1, p3}, Lcom/liquable/nemo/util/crop/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "file":Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-eqz v6, :cond_0

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 272
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, "fileC":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 274
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x4000

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {p2, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 277
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 281
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 282
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 285
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "fileC":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 278
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 281
    :goto_1
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 282
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 282
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v6

    .line 281
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fileC":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 278
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->shutdown()V

    .line 338
    :cond_0
    return-void
.end method

.method protected load(Lcom/liquable/nemo/util/crop/RenderView;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "view"    # Lcom/liquable/nemo/util/crop/RenderView;

    .prologue
    .line 342
    const/4 v7, 0x0

    .line 343
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mUri:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v8, v7

    .line 362
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 347
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mUri:Ljava/lang/String;

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/util/crop/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/crop/UriTexture;->isCached(JI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    sget-object v1, Lcom/liquable/nemo/util/crop/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    sget-object v2, Lcom/liquable/nemo/util/crop/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    .line 352
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mUri:Ljava/lang/String;

    const/16 v2, 0x400

    const/16 v3, 0x400

    iget-wide v4, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mCacheId:J

    iget-object v6, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-static/range {v0 .. v6}, Lcom/liquable/nemo/util/crop/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    move-object v8, v7

    .line 362
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 358
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 359
    .local v9, "e2":Ljava/lang/Exception;
    const-string/jumbo v0, "UriTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to load image from URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setCacheId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 366
    iput-wide p1, p0, Lcom/liquable/nemo/util/crop/UriTexture;->mCacheId:J

    .line 367
    return-void
.end method
