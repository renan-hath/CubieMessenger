.class Lcom/aviary/android/feather/AviaryMainController$PluginTaskCompletedRunnable;
.super Ljava/lang/Object;
.source "AviaryMainController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/AviaryMainController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginTaskCompletedRunnable"
.end annotation


# instance fields
.field mResult:Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;

.field final synthetic this$0:Lcom/aviary/android/feather/AviaryMainController;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/AviaryMainController;Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;)V
    .locals 0
    .param p2, "result"    # Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController$PluginTaskCompletedRunnable;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    iput-object p2, p0, Lcom/aviary/android/feather/AviaryMainController$PluginTaskCompletedRunnable;->mResult:Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;

    .line 1279
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1283
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController$PluginTaskCompletedRunnable;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    const-class v2, Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/PluginService;

    .line 1284
    .local v0, "pluginService":Lcom/aviary/android/feather/library/services/PluginService;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController$PluginTaskCompletedRunnable;->mResult:Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;

    iget-object v1, v1, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;->installed:Ljava/util/Map;

    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController$PluginTaskCompletedRunnable;->mResult:Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;

    iget-object v2, v2, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;->delta:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/library/services/PluginService;->update(Ljava/util/Map;Landroid/os/Bundle;)V

    .line 1285
    :cond_0
    return-void
.end method
