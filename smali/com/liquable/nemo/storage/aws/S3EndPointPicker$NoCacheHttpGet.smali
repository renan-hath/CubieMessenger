.class Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;
.super Ljava/lang/Object;
.source "S3EndPointPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/storage/aws/S3EndPointPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoCacheHttpGet"
.end annotation


# static fields
.field private static final _10_SECONDS:I = 0x2710


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/storage/aws/S3EndPointPicker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/storage/aws/S3EndPointPicker$1;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;-><init>()V

    return-void
.end method

.method private doGet(Ljava/lang/String;)V
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 39
    .local v0, "connection":Ljava/net/URLConnection;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 40
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 41
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 43
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 44
    invoke-direct {p0, v1}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 48
    return-void

    .line 46
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v2    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3
.end method

.method private skipAll(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 65
    .local v0, "data":[B
    :cond_0
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 66
    .local v1, "r":I
    if-gez v1, :cond_0

    .line 70
    return-void
.end method


# virtual methods
.method public retrieveDownloadTime(Ljava/lang/String;)J
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 53
    .local v1, "startTime":J
    :try_start_0
    # getter for: Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start testing s3 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;->doGet(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    :goto_0
    return-wide v3

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ignore":Ljava/io/IOException;
    # getter for: Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed testing s3 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 57
    const-wide/16 v3, -0x1

    goto :goto_0
.end method
