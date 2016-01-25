.class public Lcom/liquable/nemo/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final broadcaster:Lcom/liquable/nemo/android/BroadcastManager;

.field private final downloadingUrls:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private final nemoHttpService:Lcom/liquable/nemo/http/NemoHttpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/liquable/nemo/http/AsyncHttpClient;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/http/AsyncHttpClient;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/http/NemoHttpService;Lcom/liquable/nemo/android/BroadcastManager;)V
    .locals 1
    .param p1, "nemoHttpService"    # Lcom/liquable/nemo/http/NemoHttpService;
    .param p2, "broadcaster"    # Lcom/liquable/nemo/android/BroadcastManager;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/http/AsyncHttpClient;->downloadingUrls:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    iput-object p1, p0, Lcom/liquable/nemo/http/AsyncHttpClient;->nemoHttpService:Lcom/liquable/nemo/http/NemoHttpService;

    .line 30
    iput-object p2, p0, Lcom/liquable/nemo/http/AsyncHttpClient;->broadcaster:Lcom/liquable/nemo/android/BroadcastManager;

    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/http/AsyncHttpClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/http/AsyncHttpClient;)Lcom/liquable/nemo/http/NemoHttpService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/http/AsyncHttpClient;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/liquable/nemo/http/AsyncHttpClient;->nemoHttpService:Lcom/liquable/nemo/http/NemoHttpService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/http/AsyncHttpClient;)Lcom/liquable/nemo/android/BroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/http/AsyncHttpClient;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/liquable/nemo/http/AsyncHttpClient;->broadcaster:Lcom/liquable/nemo/android/BroadcastManager;

    return-object v0
.end method

.method static synthetic access$200()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/liquable/nemo/http/AsyncHttpClient;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/http/AsyncHttpClient;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/http/AsyncHttpClient;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/liquable/nemo/http/AsyncHttpClient;->downloadingUrls:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public startDownload(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "urlFileType"    # Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .param p3, "imageHashCode"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/http/AsyncHttpClient;->downloadingUrls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/http/AsyncHttpClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/liquable/nemo/http/AsyncHttpClient$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/liquable/nemo/http/AsyncHttpClient$1;-><init>(Lcom/liquable/nemo/http/AsyncHttpClient;Lcom/liquable/nemo/util/urlimage/UrlFileType;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
