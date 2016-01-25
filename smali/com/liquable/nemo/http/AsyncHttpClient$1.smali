.class Lcom/liquable/nemo/http/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/http/AsyncHttpClient;->startDownload(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

.field final synthetic val$imageHashCode:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$urlFileType:Lcom/liquable/nemo/util/urlimage/UrlFileType;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/http/AsyncHttpClient;Lcom/liquable/nemo/util/urlimage/UrlFileType;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/http/AsyncHttpClient;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$urlFileType:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    iput-object p3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$imageHashCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$urlFileType:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    iget-object v3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 46
    .local v1, "target":Ljava/io/File;
    iget-object v2, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->nemoHttpService:Lcom/liquable/nemo/http/NemoHttpService;
    invoke-static {v2}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$000(Lcom/liquable/nemo/http/AsyncHttpClient;)Lcom/liquable/nemo/http/NemoHttpService;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/liquable/nemo/http/NemoHttpService;->download(Ljava/lang/String;Ljava/io/File;)V

    .line 48
    iget-object v2, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->broadcaster:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v2}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$100(Lcom/liquable/nemo/http/AsyncHttpClient;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$urlFileType:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    iget v4, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$imageHashCode:I

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastUrlFileDownloadComplete(Lcom/liquable/nemo/util/urlimage/UrlFileType;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v2, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->downloadingUrls:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$300(Lcom/liquable/nemo/http/AsyncHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v1    # "target":Ljava/io/File;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AsyncHttpClient.startDownload() failed, URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iget-object v2, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->broadcaster:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v2}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$100(Lcom/liquable/nemo/http/AsyncHttpClient;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$urlFileType:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    iget v4, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$imageHashCode:I

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastUrlFileDownloadFailed(Lcom/liquable/nemo/util/urlimage/UrlFileType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    iget-object v2, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->downloadingUrls:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$300(Lcom/liquable/nemo/http/AsyncHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AsyncHttpClient.startDownload() failed, URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    iget-object v2, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->broadcaster:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v2}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$100(Lcom/liquable/nemo/http/AsyncHttpClient;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$urlFileType:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    iget v4, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$imageHashCode:I

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastUrlFileDownloadFailed(Lcom/liquable/nemo/util/urlimage/UrlFileType;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    iget-object v2, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->downloadingUrls:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$300(Lcom/liquable/nemo/http/AsyncHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->this$0:Lcom/liquable/nemo/http/AsyncHttpClient;

    # getter for: Lcom/liquable/nemo/http/AsyncHttpClient;->downloadingUrls:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/liquable/nemo/http/AsyncHttpClient;->access$300(Lcom/liquable/nemo/http/AsyncHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/http/AsyncHttpClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2
.end method
