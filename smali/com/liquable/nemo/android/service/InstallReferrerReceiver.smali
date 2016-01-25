.class public Lcom/liquable/nemo/android/service/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallReferrerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 17
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "referrer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "referrer":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    new-instance v3, Lcom/liquable/nemo/util/InstallReferrer;

    invoke-direct {v3, v1}, Lcom/liquable/nemo/util/InstallReferrer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Pref;->setInstallReferrer(Lcom/liquable/nemo/util/InstallReferrer;)V

    .line 20
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->addInstallRefferer(Ljava/lang/String;)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->addInstallRefferer(Ljava/lang/String;)V

    goto :goto_0
.end method
