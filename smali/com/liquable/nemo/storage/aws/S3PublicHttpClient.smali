.class public Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;
.super Ljava/lang/Object;
.source "S3PublicHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;
    }
.end annotation


# static fields
.field private static final _20_SECONDS:I = 0x4e20


# instance fields
.field private final downloadKeyPaths:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final logger:Lcom/liquable/nemo/util/Logger;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->logger:Lcom/liquable/nemo/util/Logger;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->downloadKeyPaths:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;)Lcom/liquable/nemo/util/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->downloadKeyPaths:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;)V
    .locals 3
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "resultFile"    # Ljava/io/File;
    .param p3, "listener"    # Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->downloadKeyPaths:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$1;-><init>(Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;Ljava/io/File;Ljava/lang/String;Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
