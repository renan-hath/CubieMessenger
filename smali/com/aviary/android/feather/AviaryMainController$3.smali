.class Lcom/aviary/android/feather/AviaryMainController$3;
.super Ljava/lang/Object;
.source "AviaryMainController.java"

# interfaces
.implements Lcom/aviary/android/feather/library/services/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/AviaryMainController;->updateInstalledPlugins(Landroid/os/Bundle;)V
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
        "Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;",
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
    .line 408
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController$3;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Ljava/util/concurrent/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .local v0, "result":Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    # getter for: Lcom/aviary/android/feather/AviaryMainController;->mPluingsHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/aviary/android/feather/AviaryMainController;->access$100()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/aviary/android/feather/AviaryMainController$PluginTaskCompletedRunnable;

    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController$3;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    invoke-direct {v3, v4, v0}, Lcom/aviary/android/feather/AviaryMainController$PluginTaskCompletedRunnable;-><init>(Lcom/aviary/android/feather/AviaryMainController;Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    .end local v0    # "result":Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController$3;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    # getter for: Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {v2}, Lcom/aviary/android/feather/AviaryMainController;->access$000(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_0
.end method
