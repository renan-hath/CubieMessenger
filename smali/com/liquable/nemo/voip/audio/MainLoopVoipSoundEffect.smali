.class Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;
.super Ljava/lang/Object;
.source "MainLoopVoipSoundEffect.java"

# interfaces
.implements Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;,
        Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$RingtoneBased;,
        Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$MediaPlayerBased;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final playableRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;",
            ">;"
        }
    .end annotation
.end field

.field private final trackingPlayTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 285
    const-class v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playableRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 291
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->trackingPlayTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 296
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->context:Landroid/content/Context;

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->handler:Landroid/os/Handler;

    .line 298
    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->trackingPlayTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playableRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private playWithTracking(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, "playableFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;>;"
    new-instance v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$5;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$5;-><init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;Ljava/util/concurrent/Callable;)V

    .line 378
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->trackingPlayTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method


# virtual methods
.method public playBusy()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$1;-><init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playWithTracking(Ljava/util/concurrent/Callable;)V

    .line 309
    return-void
.end method

.method public playCalling()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$2;-><init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playWithTracking(Ljava/util/concurrent/Callable;)V

    .line 322
    return-void
.end method

.method public playHungup()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$3;-><init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playWithTracking(Ljava/util/concurrent/Callable;)V

    .line 332
    return-void
.end method

.method public playRingtone()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$4;-><init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playWithTracking(Ljava/util/concurrent/Callable;)V

    .line 342
    return-void
.end method

.method public stopNow()V
    .locals 3

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "notStarted":Ljava/lang/Runnable;
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->trackingPlayTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "notStarted":Ljava/lang/Runnable;
    check-cast v0, Ljava/lang/Runnable;

    .restart local v0    # "notStarted":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 392
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 395
    :cond_0
    new-instance v1, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$6;-><init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)V

    .line 408
    .local v1, "stopPlayTask":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 411
    iget-object v2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    return-void
.end method
