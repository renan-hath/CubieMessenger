.class public abstract Lcom/liquable/nemo/client/Invoker;
.super Ljava/lang/Object;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final mapper:Lcom/liquable/nemo/client/mapper/ResultMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/mapper/ResultMapper",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/mapper/ResultMapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/client/mapper/ResultMapper",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/liquable/nemo/client/Invoker;, "Lcom/liquable/nemo/client/Invoker<TT;>;"
    .local p1, "mapper":Lcom/liquable/nemo/client/mapper/ResultMapper;, "Lcom/liquable/nemo/client/mapper/ResultMapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/liquable/nemo/client/Invoker;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    iput-object p1, p0, Lcom/liquable/nemo/client/Invoker;->mapper:Lcom/liquable/nemo/client/mapper/ResultMapper;

    .line 14
    return-void
.end method


# virtual methods
.method public final fail(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 17
    .local p0, "this":Lcom/liquable/nemo/client/Invoker;, "Lcom/liquable/nemo/client/Invoker<TT;>;"
    monitor-enter p0

    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/Invoker;->onFailure(Ljava/lang/Exception;)V

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/liquable/nemo/client/Invoker;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 21
    return-void

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final success(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lcom/liquable/nemo/client/Invoker;, "Lcom/liquable/nemo/client/Invoker<TT;>;"
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/client/Invoker;->mapper:Lcom/liquable/nemo/client/mapper/ResultMapper;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/client/mapper/ResultMapper;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/client/Invoker;->onSuccess(Ljava/lang/Object;)V

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/client/Invoker;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32
    return-void

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public waitComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/liquable/nemo/client/Invoker;, "Lcom/liquable/nemo/client/Invoker<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/client/Invoker;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 36
    return-void
.end method
