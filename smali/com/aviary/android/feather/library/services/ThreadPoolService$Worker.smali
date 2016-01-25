.class Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;
.super Ljava/lang/Object;
.source "ThreadPoolService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/ThreadPoolService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Future",
        "<TO;>;"
    }
.end annotation


# instance fields
.field mIsCancelled:Z

.field mIsDone:Z

.field mListener:Lcom/aviary/android/feather/library/services/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aviary/android/feather/library/services/FutureListener",
            "<TO;>;"
        }
    .end annotation
.end field

.field mParams:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field mTask:Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable",
            "<TI;TO;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/aviary/android/feather/library/services/ThreadPoolService;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/ThreadPoolService;Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable",
            "<TI;TO;>;",
            "Lcom/aviary/android/feather/library/services/FutureListener",
            "<TO;>;TI;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker<TI;TO;>;"
    .local p2, "callable":Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable<TI;TO;>;"
    .local p3, "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<TO;>;"
    .local p4, "params":Ljava/lang/Object;, "TI;"
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->this$0:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mTask:Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;

    .line 58
    iput-object p3, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mListener:Lcom/aviary/android/feather/library/services/FutureListener;

    .line 59
    iput-object p4, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mParams:Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker<TI;TO;>;"
    const/4 v1, 0x0

    .line 82
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    monitor-exit p0

    return v1

    .line 83
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mIsCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker<TI;TO;>;"
    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mIsDone:Z

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 91
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-boolean v1, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->this$0:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    iget-object v1, v1, Lcom/aviary/android/feather/library/services/ThreadPoolService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker<TI;TO;>;"
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v1, "non implemented"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker<TI;TO;>;"
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mIsCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker<TI;TO;>;"
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mIsDone:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 64
    .local p0, "this":Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker<TI;TO;>;"
    const/4 v1, 0x0

    .line 66
    .local v1, "result":Ljava/lang/Object;, "TO;"
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mTask:Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;

    iget-object v3, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->this$0:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/ThreadPoolService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mParams:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;->call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    .end local v1    # "result":Ljava/lang/Object;, "TO;"
    :goto_0
    monitor-enter p0

    .line 72
    :try_start_1
    iput-object v1, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mResult:Ljava/lang/Object;

    .line 73
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mIsDone:Z

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 71
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    iget-object v2, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mListener:Lcom/aviary/android/feather/library/services/FutureListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$Worker;->mListener:Lcom/aviary/android/feather/library/services/FutureListener;

    invoke-interface {v2, p0}, Lcom/aviary/android/feather/library/services/FutureListener;->onFutureDone(Ljava/util/concurrent/Future;)V

    .line 78
    :cond_0
    return-void

    .line 67
    .restart local v1    # "result":Ljava/lang/Object;, "TO;"
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Ljava/lang/Object;, "TO;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
