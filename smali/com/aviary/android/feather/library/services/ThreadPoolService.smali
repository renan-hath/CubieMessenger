.class public Lcom/aviary/android/feather/library/services/ThreadPoolService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "ThreadPoolService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;,
        Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;,
        Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 10
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 24
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;

    const-string/jumbo v8, "thread-pool-service"

    const/4 v9, 0x0

    invoke-direct {v7, p0, v8, v9}, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;-><init>(Lcom/aviary/android/feather/library/services/ThreadPoolService;Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 24
    iput-object v0, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 26
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 45
    return-void
.end method

.method public submit(Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable",
            "<TI;TO;>;",
            "Lcom/aviary/android/feather/library/services/FutureListener",
            "<TO;>;TI;)",
            "Ljava/util/concurrent/Future",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "callable":Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable<TI;TO;>;"
    .local p2, "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<TO;>;"
    .local p3, "params":Ljava/lang/Object;, "TI;"
    new-instance v0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;-><init>(Lcom/aviary/android/feather/library/services/ThreadPoolService;Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)V

    .line 30
    .local v0, "worker":Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker<TI;TO;>;"
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 31
    return-object v0
.end method
