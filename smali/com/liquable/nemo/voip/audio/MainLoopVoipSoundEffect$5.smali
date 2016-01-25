.class Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$5;
.super Ljava/lang/Object;
.source "MainLoopVoipSoundEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playWithTracking(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

.field final synthetic val$playableFactory:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$5;->this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    iput-object p2, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$5;->val$playableFactory:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 348
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$5;->this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->trackingPlayTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$300(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const/4 v1, 0x0

    .line 355
    .local v1, "playable":Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$5;->val$playableFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "playable":Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    check-cast v1, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .restart local v1    # "playable":Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    if-eqz v1, :cond_0

    .line 365
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$5;->this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playableRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$400(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;

    .line 366
    .local v2, "previous":Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {v2}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;->destroy()V

    .line 374
    :cond_2
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;->play()V

    goto :goto_0

    .line 356
    .end local v1    # "playable":Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    .end local v2    # "previous":Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    const-string/jumbo v4, "error while start voip sound effect"

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
