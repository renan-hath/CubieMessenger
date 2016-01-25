.class public abstract Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;
.super Ljava/lang/Object;
.source "ThreadMediaPool.java"

# interfaces
.implements Lcom/aviary/android/feather/library/threading/Future;
.implements Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/threading/ThreadMediaPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
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
        "Lcom/aviary/android/feather/library/threading/Future",
        "<TO;>;",
        "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsCancelled:Z

.field protected mIsDone:Z

.field protected mListener:Lcom/aviary/android/feather/library/threading/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aviary/android/feather/library/threading/FutureListener",
            "<TO;>;"
        }
    .end annotation
.end field

.field protected mMode:I

.field protected mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job",
            "<TI;TO;>;",
            "Lcom/aviary/android/feather/library/threading/FutureListener",
            "<TO;>;[TI;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker<TI;TO;>;"
    .local p2, "job":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job<TI;TO;>;"
    .local p3, "listener":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p3, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mListener:Lcom/aviary/android/feather/library/threading/FutureListener;

    .line 99
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mContextRef:Ljava/lang/ref/SoftReference;

    .line 100
    return-void
.end method

.method private acquireResource(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;)Z
    .locals 1
    .param p1, "counter"    # Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    .prologue
    .line 200
    .local p0, "this":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker<TI;TO;>;"
    :goto_0
    monitor-enter p0

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mWaitOnResource:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    .line 203
    monitor-exit p0

    const/4 v0, 0x0

    .line 226
    :goto_1
    return v0

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mWaitOnResource:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-enter p1

    .line 209
    :try_start_1
    iget v0, p1, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 210
    iget v0, p1, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;->value:I

    .line 211
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    monitor-enter p0

    .line 223
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mWaitOnResource:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    .line 222
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 226
    const/4 v0, 0x1

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 214
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    :goto_2
    :try_start_5
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 222
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 215
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private modeToCounter(I)Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 189
    .local p0, "this":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker<TI;TO;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 190
    sget-object v0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool;->mCpuCounter:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    .line 194
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 192
    sget-object v0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool;->mNetworkCounter:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResource(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;)V
    .locals 1
    .param p1, "counter"    # Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    .prologue
    .line 230
    .local p0, "this":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker<TI;TO;>;"
    monitor-enter p1

    .line 231
    :try_start_0
    iget v0, p1, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;->value:I

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 230
    monitor-exit p1

    .line 234
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected fireOnDoneEvent()V
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker<TI;TO;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mListener:Lcom/aviary/android/feather/library/threading/FutureListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mListener:Lcom/aviary/android/feather/library/threading/FutureListener;

    invoke-interface {v0, p0}, Lcom/aviary/android/feather/library/threading/FutureListener;->onFutureDone(Lcom/aviary/android/feather/library/threading/Future;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected setIsDone()V
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker<TI;TO;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mIsDone:Z

    .line 114
    return-void
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker<TI;TO;>;"
    const/4 v1, 0x0

    .line 172
    iget v2, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mMode:I

    invoke-direct {p0, v2}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->modeToCounter(I)Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    move-result-object v0

    .line 173
    .local v0, "rc":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->releaseResource(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;)V

    .line 174
    :cond_0
    iput v1, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mMode:I

    .line 177
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->modeToCounter(I)Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_2

    .line 179
    invoke-direct {p0, v0}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->acquireResource(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    :goto_0
    return v1

    .line 182
    :cond_1
    iput p1, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mMode:I

    .line 185
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker<TI;TO;>;"
    .local p1, "result":Ljava/lang/Object;, "TO;"
    iput-object p1, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;->mResult:Ljava/lang/Object;

    .line 110
    return-void
.end method
