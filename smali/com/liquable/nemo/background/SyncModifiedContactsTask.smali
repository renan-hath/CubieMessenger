.class public Lcom/liquable/nemo/background/SyncModifiedContactsTask;
.super Lcom/liquable/nemo/background/SchedulableTask;
.source "SyncModifiedContactsTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final serialVersionUID:J = 0x2c9b49798ee1628cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/liquable/nemo/background/SchedulableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmType()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public getScheduleInterval()J
    .locals 2

    .prologue
    .line 23
    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public getScheduleIntervalOnError()J
    .locals 2

    .prologue
    .line 28
    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public runInBackground(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isAutoScheduleSyncContactsEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncModifiedContactsTask;->runSuccessfully(Landroid/content/Context;)V

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    :try_start_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/AccountDaemon;->importContacts(Z)Ljava/util/List;

    move-result-object v1

    .line 40
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->syncModifiedContacts(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncModifiedContactsTask;->runSuccessfully(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lcom/liquable/nemo/client/AsyncException;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncModifiedContactsTask;->runUnsuccessfully(Landroid/content/Context;)V

    goto :goto_0
.end method
