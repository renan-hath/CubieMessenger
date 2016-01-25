.class public Lcom/liquable/future/android/AndroidEventLoop;
.super Ljava/lang/Object;
.source "AndroidEventLoop.java"

# interfaces
.implements Lcom/liquable/future/EventLoop;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/future/android/AndroidEventLoop;->handler:Landroid/os/Handler;

    .line 40
    if-gtz p1, :cond_0

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/future/android/AndroidEventLoop;->executor:Ljava/util/concurrent/Executor;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/future/android/AndroidEventLoop;->executor:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method

.method public static asyncTask()Lcom/liquable/future/android/AndroidEventLoop;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/liquable/future/android/AndroidEventLoop;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/future/android/AndroidEventLoop;-><init>(I)V

    return-object v0
.end method

.method public static pool(I)Lcom/liquable/future/android/AndroidEventLoop;
    .locals 2
    .param p0, "threadPoolSize"    # I

    .prologue
    .line 29
    if-gtz p0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "threadPoolSize must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    new-instance v0, Lcom/liquable/future/android/AndroidEventLoop;

    invoke-direct {v0, p0}, Lcom/liquable/future/android/AndroidEventLoop;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/future/android/AndroidEventLoop;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method

.method public addAsync(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/future/android/AndroidEventLoop;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/liquable/future/android/AndroidEventLoop$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/future/android/AndroidEventLoop$1;-><init>(Lcom/liquable/future/android/AndroidEventLoop;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 62
    invoke-virtual {v0, v1}, Lcom/liquable/future/android/AndroidEventLoop$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/liquable/future/android/AndroidEventLoop;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addDelayed(JLjava/lang/Runnable;)V
    .locals 1
    .param p1, "milliseconds"    # J
    .param p3, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/future/android/AndroidEventLoop;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    return-void
.end method

.method public enforceThread(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method
