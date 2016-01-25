.class public Lcom/liquable/nemo/util/DebugReporter;
.super Ljava/lang/Object;
.source "DebugReporter.java"


# instance fields
.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/util/DebugReporter;->pool:Ljava/util/concurrent/ExecutorService;

    .line 23
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/util/DebugReporter;->logger:Lcom/liquable/nemo/util/Logger;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/DebugReporter;)Lcom/liquable/nemo/http/NemoHttpService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/DebugReporter;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/liquable/nemo/util/DebugReporter;->createNemoHttpServiceForPost()Lcom/liquable/nemo/http/NemoHttpService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/util/DebugReporter;)Lcom/liquable/nemo/util/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/DebugReporter;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/liquable/nemo/util/DebugReporter;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method private createNemoHttpServiceForPost()Lcom/liquable/nemo/http/NemoHttpService;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/liquable/nemo/http/NemoHttpService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/http/NemoHttpService;-><init>(Lcom/liquable/nemo/storage/NemoFileService;)V

    return-object v0
.end method

.method public static getInstance()Lcom/liquable/nemo/util/DebugReporter;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/liquable/nemo/util/DebugReporter;

    invoke-direct {v0}, Lcom/liquable/nemo/util/DebugReporter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/DebugReporter;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/liquable/nemo/util/DebugReporter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/liquable/nemo/util/DebugReporter$1;-><init>(Lcom/liquable/nemo/util/DebugReporter;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public exception(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/util/DebugReporter;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/liquable/nemo/util/DebugReporter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/liquable/nemo/util/DebugReporter$2;-><init>(Lcom/liquable/nemo/util/DebugReporter;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
