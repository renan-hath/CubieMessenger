.class Lcom/aviary/android/feather/FeatherActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/FeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$2;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 521
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$2;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iget-object v2, v2, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    if-eqz v2, :cond_0

    .line 523
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 524
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 525
    const-string/jumbo v2, "APPLICATION_CONTEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    const-string/jumbo v2, "APPLICATION_CONTEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "app_context":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity$2;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iget-object v2, v2, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v2, p2}, Lcom/aviary/android/feather/AviaryMainController;->onPluginChanged(Landroid/content/Intent;)V

    .line 533
    .end local v0    # "app_context":Ljava/lang/String;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
