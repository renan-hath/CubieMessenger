.class public Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;
.super Ljava/lang/Object;
.source "FileCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/FileCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleCachedHttpUrlConnection"
.end annotation


# instance fields
.field mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/aviary/android/feather/library/services/FileCacheService;",
            ">;"
        }
    .end annotation
.end field

.field mSpec:Ljava/lang/String;

.field mUrl:Ljava/net/URL;

.field mUrlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/services/FileCacheService;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/aviary/android/feather/library/services/FileCacheService;
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 171
    iput-object p2, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mSpec:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mSpec:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mUrl:Ljava/net/URL;

    .line 173
    return-void
.end method


# virtual methods
.method public getInputStream(Z)Ljava/io/ByteArrayInputStream;
    .locals 9
    .param p1, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 181
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/library/services/FileCacheService;

    .line 182
    .local v4, "service":Lcom/aviary/android/feather/library/services/FileCacheService;
    if-nez v4, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "FileCacheService is null"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :cond_0
    if-eqz p1, :cond_1

    .line 186
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mSpec:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/aviary/android/feather/library/services/FileCacheService;->readStream(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object v5

    .line 187
    .local v5, "stream":Ljava/io/ByteArrayInputStream;
    if-eqz v5, :cond_1

    .line 231
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_0
    return-object v5

    .line 192
    :cond_1
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mUrl:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    iput-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mUrlConnection:Ljava/net/HttpURLConnection;

    .line 193
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mUrlConnection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 194
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 195
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 198
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mUrlConnection:Ljava/net/HttpURLConnection;

    const/16 v7, 0x7d0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 203
    :try_start_0
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    .local v3, "outArray":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, v3}, Lcom/aviary/android/feather/headless/utils/IOUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 211
    invoke-static {v1}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 213
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    .local v2, "is":Ljava/io/ByteArrayInputStream;
    invoke-static {v3}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 217
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "service":Lcom/aviary/android/feather/library/services/FileCacheService;
    check-cast v4, Lcom/aviary/android/feather/library/services/FileCacheService;

    .line 218
    .restart local v4    # "service":Lcom/aviary/android/feather/library/services/FileCacheService;
    if-eqz v4, :cond_3

    .line 220
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->markSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 221
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 224
    :cond_2
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mSpec:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Lcom/aviary/android/feather/library/services/FileCacheService;->writeStream(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 226
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->markSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 227
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    :cond_3
    move-object v5, v2

    .line 231
    goto :goto_0

    .line 204
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "is":Ljava/io/ByteArrayInputStream;
    .end local v3    # "outArray":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;->mSpec:Ljava/lang/String;

    return-object v0
.end method
