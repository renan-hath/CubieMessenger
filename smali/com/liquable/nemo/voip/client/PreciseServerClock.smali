.class public final Lcom/liquable/nemo/voip/client/PreciseServerClock;
.super Ljava/lang/Object;
.source "PreciseServerClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

.field private final timeShiftRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/home/HomeServerClient;)V
    .locals 1
    .param p1, "homeServerClient"    # Lcom/liquable/nemo/client/home/HomeServerClient;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock;->executor:Ljava/util/concurrent/ExecutorService;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock;->timeShiftRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/voip/client/PreciseServerClock;)Lcom/liquable/nemo/client/home/HomeServerClient;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/PreciseServerClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/client/PreciseServerClock;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/PreciseServerClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock;->timeShiftRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public findCurrentTimeSync()Ljava/lang/Long;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v5, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock;->timeShiftRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;

    .line 63
    .local v3, "timeShift":Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->isOutOfDate()Z

    move-result v5

    if-nez v5, :cond_1

    .line 64
    # invokes: Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->getAdjustedClock()J
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->access$000(Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 101
    :cond_0
    :goto_0
    return-object v4

    .line 67
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/liquable/nemo/voip/client/PreciseServerClock$1;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/voip/client/PreciseServerClock$1;-><init>(Lcom/liquable/nemo/voip/client/PreciseServerClock;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 89
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;>;"
    const-wide/16 v5, 0x3

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;

    .line 90
    .local v2, "newTimeShift":Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;
    if-eqz v2, :cond_0

    .line 91
    # invokes: Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->getAdjustedClock()J
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->access$000(Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    .line 95
    .end local v2    # "newTimeShift":Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 101
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0
.end method
