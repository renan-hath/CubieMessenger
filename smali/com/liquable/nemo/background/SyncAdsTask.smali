.class public Lcom/liquable/nemo/background/SyncAdsTask;
.super Lcom/liquable/nemo/background/SchedulableTask;
.source "SyncAdsTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final WAKELOCK_KEY:Ljava/lang/String; = "SYNC_ADS_TASK_ALARM_WAKE_LOCK"

.field private static final serialVersionUID:J = 0x2d2c8378423b2289L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/liquable/nemo/background/SchedulableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmType()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public getScheduleInterval()J
    .locals 2

    .prologue
    .line 21
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public getScheduleIntervalOnError()J
    .locals 2

    .prologue
    .line 26
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public runInBackground(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 33
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string/jumbo v4, "SYNC_ADS_TASK_ALARM_WAKE_LOCK"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 36
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 38
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->adsManager:Lcom/liquable/nemo/ads/model/AdsManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/ads/model/AdsManager;->syncAdItems()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncAdsTask;->runSuccessfully(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lcom/liquable/nemo/client/AsyncException;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncAdsTask;->runUnsuccessfully(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 43
    .end local v0    # "e":Lcom/liquable/nemo/client/AsyncException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    throw v3
.end method
