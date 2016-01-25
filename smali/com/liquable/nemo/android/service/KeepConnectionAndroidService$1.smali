.class Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;
.super Landroid/content/BroadcastReceiver;
.source "KeepConnectionAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    .prologue
    .line 77
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;"
    iput-object p1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;"
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 82
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 83
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v2}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->access$000(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;)Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    const-string/jumbo v3, "network back, try reconnectIfNecessary"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    # invokes: Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->reconnectIfNecessary()V
    invoke-static {v2}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->access$100(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v2}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->access$000(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;)Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    const-string/jumbo v3, "network gone, try interrupt soon"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->interruptConnection(Z)V

    goto :goto_0
.end method
