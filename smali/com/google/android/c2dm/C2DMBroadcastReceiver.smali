.class public Lcom/google/android/c2dm/C2DMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 14
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isEnterDeleteAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/c2dm/C2DMBaseReceiver;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 18
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/c2dm/C2DMBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
