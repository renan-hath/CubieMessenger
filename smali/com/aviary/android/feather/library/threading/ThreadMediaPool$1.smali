.class Lcom/aviary/android/feather/library/threading/ThreadMediaPool$1;
.super Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;
.source "ThreadMediaPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/threading/ThreadMediaPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker",
        "<TI;TO;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$job:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;

.field private final synthetic val$params:[Ljava/lang/Object;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "result":Ljava/lang/Object;, "TO;"
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$1;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$1;->val$job:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;

    iget-object v3, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$1;->val$params:[Ljava/lang/Object;

    invoke-interface {v2, p0, v3}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;->run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    .end local v1    # "result":Ljava/lang/Object;, "TO;"
    :cond_0
    :goto_0
    monitor-enter p0

    .line 70
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$1;->setMode(I)Z

    .line 71
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$1;->setResult(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$1;->setIsDone()V

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$1;->fireOnDoneEvent()V

    .line 77
    return-void

    .line 64
    .restart local v1    # "result":Ljava/lang/Object;, "TO;"
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v2, "Worker"

    const-string/jumbo v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "result":Ljava/lang/Object;, "TO;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
