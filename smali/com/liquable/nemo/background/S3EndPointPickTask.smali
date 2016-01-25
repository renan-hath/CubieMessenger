.class public Lcom/liquable/nemo/background/S3EndPointPickTask;
.super Lcom/liquable/nemo/background/SchedulableTask;
.source "S3EndPointPickTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final WAKELOCK_KEY:Ljava/lang/String; = "S3_END_POINT_PICK_TASK_ALARM_WAKE_LOCK"

.field private static final serialVersionUID:J = -0x360bd114a0a1018cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/liquable/nemo/background/SchedulableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmType()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getScheduleInterval()J
    .locals 2

    .prologue
    .line 25
    const-wide/32 v0, 0xf731400

    return-wide v0
.end method

.method public getScheduleIntervalOnError()J
    .locals 6

    .prologue
    .line 30
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getNextPickS3EndPointTime()J

    move-result-wide v2

    .line 31
    .local v2, "savedNextTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 32
    .local v0, "nextTime":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    return-wide v4

    .end local v0    # "nextTime":J
    :cond_0
    move-wide v0, v2

    .line 31
    goto :goto_0
.end method

.method public runInBackground(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 38
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string/jumbo v4, "S3_END_POINT_PICK_TASK_ALARM_WAKE_LOCK"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 41
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 43
    :try_start_0
    new-instance v3, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-direct {v3, v4}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;-><init>(Lcom/liquable/nemo/util/Pref;)V

    invoke-virtual {v3}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->startPick()Z

    move-result v1

    .line 44
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/S3EndPointPickTask;->runSuccessfully(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 54
    :cond_0
    return-void

    .line 47
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/S3EndPointPickTask;->runUnsuccessfully(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    .end local v1    # "result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    throw v3
.end method
