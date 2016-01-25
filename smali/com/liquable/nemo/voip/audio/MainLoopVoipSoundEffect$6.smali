.class Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$6;
.super Ljava/lang/Object;
.source "MainLoopVoipSoundEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->stopNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$6;->this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$6;->this$0:Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;

    # getter for: Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->playableRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;->access$400(Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;

    .line 400
    .local v0, "exist":Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/audio/MainLoopVoipSoundEffect$ThreadSafePlayable;->destroy()V

    .line 404
    :cond_0
    return-void
.end method
