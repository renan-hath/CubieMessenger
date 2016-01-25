.class Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;
.super Ljava/lang/Object;
.source "S3PublicHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->download(Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

.field final synthetic val$listener:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;

.field final synthetic val$resultFile:Ljava/io/File;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;Ljava/io/File;Ljava/lang/String;Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->this$0:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    iput-object p2, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$resultFile:Ljava/io/File;

    iput-object p3, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$urlString:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$listener:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 55
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$resultFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 56
    .local v3, "tempFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 57
    .local v2, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 59
    .local v4, "tempOutput":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v4    # "tempOutput":Ljava/io/FileOutputStream;
    .local v5, "tempOutput":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$urlString:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 62
    .local v0, "connection":Ljava/net/URLConnection;
    const/16 v7, 0x4e20

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 63
    const/16 v7, 0x4e20

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 65
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 66
    invoke-static {v2, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 67
    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$resultFile:Ljava/io/File;

    invoke-static {v3, v7}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 68
    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$listener:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;

    invoke-interface {v7}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;->onComplete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 79
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 80
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 81
    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->this$0:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    # getter for: Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->downloadKeyPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->access$100(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$urlString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    .line 83
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v5    # "tempOutput":Ljava/io/FileOutputStream;
    .end local v6    # "url":Ljava/net/URL;
    .restart local v4    # "tempOutput":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->this$0:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    # getter for: Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v7}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->access$000(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;)Lcom/liquable/nemo/util/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "downloadArtwork error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 71
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 72
    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$listener:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;

    invoke-interface {v7}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;->onFailed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 79
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 80
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 81
    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->this$0:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    # getter for: Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->downloadKeyPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->access$100(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$urlString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->this$0:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    # getter for: Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v7}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->access$000(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;)Lcom/liquable/nemo/util/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "downloadArtwork error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 75
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 76
    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$listener:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;

    invoke-interface {v7}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;->onFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 79
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 80
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 81
    iget-object v7, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->this$0:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    # getter for: Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->downloadKeyPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->access$100(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$urlString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 79
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 80
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 81
    iget-object v8, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->this$0:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    # getter for: Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->downloadKeyPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v8}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->access$100(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;->val$urlString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v7

    .line 78
    .end local v4    # "tempOutput":Ljava/io/FileOutputStream;
    .restart local v5    # "tempOutput":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "tempOutput":Ljava/io/FileOutputStream;
    .restart local v4    # "tempOutput":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 73
    .end local v4    # "tempOutput":Ljava/io/FileOutputStream;
    .restart local v5    # "tempOutput":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "tempOutput":Ljava/io/FileOutputStream;
    .restart local v4    # "tempOutput":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 69
    .end local v4    # "tempOutput":Ljava/io/FileOutputStream;
    .restart local v5    # "tempOutput":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "tempOutput":Ljava/io/FileOutputStream;
    .restart local v4    # "tempOutput":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method
