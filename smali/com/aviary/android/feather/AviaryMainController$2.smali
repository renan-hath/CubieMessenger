.class Lcom/aviary/android/feather/AviaryMainController$2;
.super Ljava/lang/Object;
.source "AviaryMainController.java"

# interfaces
.implements Lcom/aviary/android/feather/library/services/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/AviaryMainController;->updateAvailablePlugins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/services/FutureListener",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/AviaryMainController;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/AviaryMainController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/AviaryMainController;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController$2;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Ljava/util/concurrent/Future;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/Bundle;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 373
    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController$2;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    # getter for: Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {v3}, Lcom/aviary/android/feather/AviaryMainController;->access$000(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "updateAvailablePlugins::completed"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 374
    const/4 v1, 0x0

    .line 376
    .local v1, "result":Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    # getter for: Lcom/aviary/android/feather/AviaryMainController;->mPluingsHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/aviary/android/feather/AviaryMainController;->access$100()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/aviary/android/feather/AviaryMainController$ExternalPluginTaskCompletedRunnable;

    iget-object v5, p0, Lcom/aviary/android/feather/AviaryMainController$2;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    invoke-direct {v4, v5, v1}, Lcom/aviary/android/feather/AviaryMainController$ExternalPluginTaskCompletedRunnable;-><init>(Lcom/aviary/android/feather/AviaryMainController;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v2

    .line 378
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController$2;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    # getter for: Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {v3}, Lcom/aviary/android/feather/AviaryMainController;->access$000(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_0
.end method
