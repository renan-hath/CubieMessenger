.class Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask$1;
.super Ljava/lang/Object;
.source "EffectsPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/library/threading/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/threading/FutureListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask$1;->this$1:Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/aviary/android/feather/library/threading/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/library/threading/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "arg0":Lcom/aviary/android/feather/library/threading/Future;, "Lcom/aviary/android/feather/library/threading/Future<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask$1;->this$1:Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EffectsPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mOpenGlBackgroundListener::onFutureDone"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask$1;->this$1:Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->mOpenGlCompleted:Ljava/lang/Object;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->access$200(Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask$1;->this$1:Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->mOpenGlCompleted:Ljava/lang/Object;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->access$200(Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 345
    monitor-exit v1

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
