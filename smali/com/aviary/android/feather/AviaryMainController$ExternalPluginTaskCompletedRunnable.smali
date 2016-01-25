.class Lcom/aviary/android/feather/AviaryMainController$ExternalPluginTaskCompletedRunnable;
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
    name = "ExternalPluginTaskCompletedRunnable"
.end annotation


# instance fields
.field mResult:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/aviary/android/feather/AviaryMainController;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/AviaryMainController;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController$ExternalPluginTaskCompletedRunnable;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-object p2, p0, Lcom/aviary/android/feather/AviaryMainController$ExternalPluginTaskCompletedRunnable;->mResult:Landroid/os/Bundle;

    .line 1294
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1298
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController$ExternalPluginTaskCompletedRunnable;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    const-class v2, Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/PluginService;

    .line 1299
    .local v0, "pluginService":Lcom/aviary/android/feather/library/services/PluginService;
    if-eqz v0, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController$ExternalPluginTaskCompletedRunnable;->mResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/PluginService;->updateExternalPackages(Landroid/os/Bundle;)V

    .line 1303
    :cond_0
    return-void
.end method
