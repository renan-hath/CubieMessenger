.class public abstract Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;
.super Ljava/lang/Object;
.source "AbstractVoipEventLoop.java"

# interfaces
.implements Lcom/liquable/nemo/voip/event/EventSink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/voip/event/EventSink",
        "<",
        "Lcom/liquable/nemo/voip/event/VoipEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .prologue
    .line 19
    iget-object v1, p0, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public offer(Lcom/liquable/nemo/voip/event/VoipEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop$1;-><init>(Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;Lcom/liquable/nemo/voip/event/VoipEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v1, 0x1

    .line 40
    :goto_0
    return v1

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ignore":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/liquable/nemo/voip/event/VoipEvent;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;->offer(Lcom/liquable/nemo/voip/event/VoipEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract processEvent(Lcom/liquable/nemo/voip/event/VoipEvent;)V
.end method

.method public tryRepeatTask(Ljava/lang/Runnable;J)Z
    .locals 8
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "interval"    # J

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v7

    .line 52
    .local v7, "ignore":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public trySubmitTask(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop$2;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop$2;-><init>(Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const/4 v1, 0x1

    .line 68
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ignore":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v1, 0x0

    goto :goto_0
.end method
