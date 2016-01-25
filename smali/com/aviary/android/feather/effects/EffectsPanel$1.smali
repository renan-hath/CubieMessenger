.class Lcom/aviary/android/feather/effects/EffectsPanel$1;
.super Ljava/lang/Object;
.source "EffectsPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/library/threading/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/EffectsPanel;->onGenerateResult()V
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
.field final synthetic this$0:Lcom/aviary/android/feather/effects/EffectsPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/EffectsPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$1;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

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
    .line 135
    .local p1, "arg0":Lcom/aviary/android/feather/library/threading/Future;, "Lcom/aviary/android/feather/library/threading/Future<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$1;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EffectsPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "write bitmap completed!"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$1;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/EffectsPanel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/effects/EffectsPanel$1$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/effects/EffectsPanel$1$1;-><init>(Lcom/aviary/android/feather/effects/EffectsPanel$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method
