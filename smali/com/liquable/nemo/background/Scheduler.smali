.class public Lcom/liquable/nemo/background/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# static fields
.field public static final SCHEDULE_TASK_KEY:Ljava/lang/String; = "com.liquable.nemo.background.Scheduler.SCHEDULE_TASK_KEY"

.field private static final debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

.field private static instance:Lcom/liquable/nemo/background/Scheduler;


# instance fields
.field private alarmId:I

.field private final tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/background/SchedulableTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;->getLogger()Lcom/liquable/nemo/util/RemoteAccessLog;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/background/Scheduler;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/liquable/nemo/background/Scheduler;->instance:Lcom/liquable/nemo/background/Scheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/background/Scheduler;->alarmId:I

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/background/Scheduler;->tasks:Ljava/util/Map;

    return-void
.end method

.method private generateAlarmId()I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/liquable/nemo/background/Scheduler;->alarmId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/liquable/nemo/background/Scheduler;->alarmId:I

    return v0
.end method

.method public static getInstance()Lcom/liquable/nemo/background/Scheduler;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/liquable/nemo/background/Scheduler;->instance:Lcom/liquable/nemo/background/Scheduler;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/liquable/nemo/background/Scheduler;

    invoke-direct {v0}, Lcom/liquable/nemo/background/Scheduler;-><init>()V

    sput-object v0, Lcom/liquable/nemo/background/Scheduler;->instance:Lcom/liquable/nemo/background/Scheduler;

    .line 23
    :cond_0
    sget-object v0, Lcom/liquable/nemo/background/Scheduler;->instance:Lcom/liquable/nemo/background/Scheduler;

    return-object v0
.end method

.method private getTaskFromBundle(Landroid/os/Bundle;)Lcom/liquable/nemo/background/SchedulableTask;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 53
    const-string/jumbo v1, "com.liquable.nemo.background.Scheduler.SCHEDULE_TASK_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/background/Scheduler;->tasks:Ljava/util/Map;

    const-string/jumbo v2, "com.liquable.nemo.background.Scheduler.SCHEDULE_TASK_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/background/Scheduler;->tasks:Ljava/util/Map;

    const-string/jumbo v1, "com.liquable.nemo.background.Scheduler.SCHEDULE_TASK_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/background/SchedulableTask;

    goto :goto_0
.end method

.method private runScheduledTask(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/liquable/nemo/background/SchedulableTask;

    .prologue
    .line 92
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->isAccountExists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 108
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/background/Scheduler;->getScheduleTaskLastRunTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 97
    .local v0, "lastRunTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 98
    .local v4, "timeDiff":J
    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getScheduleInterval()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 99
    sget-object v6, Lcom/liquable/nemo/background/Scheduler;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ignored because time diff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    .line 100
    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Scheduler"

    .line 99
    invoke-interface {v6, v7, v8}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getScheduleInterval()J

    move-result-wide v6

    add-long v2, v0, v6

    .line 103
    .local v2, "nextTime":J
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/liquable/nemo/background/Scheduler;->schedule(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;J)V

    goto :goto_0

    .line 105
    .end local v2    # "nextTime":J
    :cond_1
    sget-object v6, Lcom/liquable/nemo/background/Scheduler;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " triggered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Scheduler"

    invoke-interface {v6, v7, v8}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2, p1}, Lcom/liquable/nemo/background/SchedulableTask;->runInScheduler(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private schedule(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;J)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/liquable/nemo/background/SchedulableTask;
    .param p3, "fireTime"    # J

    .prologue
    .line 113
    iget-object v3, p0, Lcom/liquable/nemo/background/Scheduler;->tasks:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string/jumbo v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 118
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/liquable/nemo/background/ScheduleAlarmReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1, p2}, Lcom/liquable/nemo/background/Scheduler;->setTaskToBundle(Landroid/content/Intent;Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 123
    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getAlarmId()I

    move-result v3

    const/high16 v4, 0x8000000

    .line 122
    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 126
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v3, Lcom/liquable/nemo/background/Scheduler;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " am.set:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 127
    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getAlarmId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, p3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Scheduler"

    .line 126
    invoke-interface {v3, v4, v5}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getAlarmType()I

    move-result v3

    invoke-virtual {v0, v3, p3, p4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private scheduleAll(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fireTime"    # J

    .prologue
    .line 135
    const/4 v0, 0x1

    .line 136
    .local v0, "i":I
    iget-object v3, p0, Lcom/liquable/nemo/background/Scheduler;->tasks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/background/SchedulableTask;

    .line 137
    .local v2, "task":Lcom/liquable/nemo/background/SchedulableTask;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isAccountExists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    mul-int/lit16 v4, v0, 0x2710

    int-to-long v4, v4

    add-long/2addr v4, p2

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/liquable/nemo/background/Scheduler;->schedule(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;J)V

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 141
    .end local v2    # "task":Lcom/liquable/nemo/background/SchedulableTask;
    :cond_1
    return-void
.end method

.method private setTaskToBundle(Landroid/content/Intent;Lcom/liquable/nemo/background/SchedulableTask;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "task"    # Lcom/liquable/nemo/background/SchedulableTask;

    .prologue
    .line 158
    const-string/jumbo v0, "com.liquable.nemo.background.Scheduler.SCHEDULE_TASK_KEY"

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    return-void
.end method


# virtual methods
.method public findTaskToRun(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/liquable/nemo/background/Scheduler;->getTaskFromBundle(Landroid/os/Bundle;)Lcom/liquable/nemo/background/SchedulableTask;

    move-result-object v0

    .line 39
    .local v0, "task":Lcom/liquable/nemo/background/SchedulableTask;
    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/background/Scheduler;->runScheduledTask(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 42
    :cond_0
    return-void
.end method

.method public getScheduleTaskLastRunTime(Ljava/lang/String;)J
    .locals 2
    .param p1, "taskKey"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/Pref;->getScheduleTaskLastRunTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Landroid/content/Context;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fireTime"    # J

    .prologue
    .line 65
    new-instance v0, Lcom/liquable/nemo/background/SyncAllContactsTask;

    invoke-direct {v0}, Lcom/liquable/nemo/background/SyncAllContactsTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/background/Scheduler;->register(Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 66
    new-instance v0, Lcom/liquable/nemo/background/SyncAdsTask;

    invoke-direct {v0}, Lcom/liquable/nemo/background/SyncAdsTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/background/Scheduler;->register(Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 67
    new-instance v0, Lcom/liquable/nemo/background/SyncModifiedContactsTask;

    invoke-direct {v0}, Lcom/liquable/nemo/background/SyncModifiedContactsTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/background/Scheduler;->register(Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 68
    new-instance v0, Lcom/liquable/nemo/background/SyncStickerRootTask;

    invoke-direct {v0}, Lcom/liquable/nemo/background/SyncStickerRootTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/background/Scheduler;->register(Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 69
    new-instance v0, Lcom/liquable/nemo/background/ListSystemNoticesTask;

    invoke-direct {v0}, Lcom/liquable/nemo/background/ListSystemNoticesTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/background/Scheduler;->register(Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 70
    new-instance v0, Lcom/liquable/nemo/background/C2DMRegisterIdUpdateTask;

    invoke-direct {v0}, Lcom/liquable/nemo/background/C2DMRegisterIdUpdateTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/background/Scheduler;->register(Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 71
    new-instance v0, Lcom/liquable/nemo/background/S3EndPointPickTask;

    invoke-direct {v0}, Lcom/liquable/nemo/background/S3EndPointPickTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/background/Scheduler;->register(Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 72
    new-instance v0, Lcom/liquable/nemo/background/RemoveMediaFileTask;

    invoke-direct {v0}, Lcom/liquable/nemo/background/RemoveMediaFileTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/background/Scheduler;->register(Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/background/Scheduler;->scheduleAll(Landroid/content/Context;J)V

    .line 74
    return-void
.end method

.method public register(Lcom/liquable/nemo/background/SchedulableTask;)V
    .locals 3
    .param p1, "task"    # Lcom/liquable/nemo/background/SchedulableTask;

    .prologue
    .line 77
    sget-object v0, Lcom/liquable/nemo/background/Scheduler;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Scheduler"

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/liquable/nemo/background/Scheduler;->generateAlarmId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/background/SchedulableTask;->setAlarmId(I)V

    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/background/Scheduler;->tasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public reschedue(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/liquable/nemo/background/SchedulableTask;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/background/Scheduler;->tasks:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/liquable/nemo/background/Scheduler;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed, reschedue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Scheduler"

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getScheduleIntervalOnError()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/liquable/nemo/background/Scheduler;->schedule(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;J)V

    goto :goto_0
.end method

.method public scheduleNextTime(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/liquable/nemo/background/SchedulableTask;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/background/Scheduler;->tasks:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/liquable/nemo/background/Scheduler;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " succeeded, scheduleNextTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Scheduler"

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/liquable/nemo/background/Scheduler;->setScheduleTaskLastRunTime(Ljava/lang/String;J)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/liquable/nemo/background/SchedulableTask;->getScheduleInterval()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/liquable/nemo/background/Scheduler;->schedule(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;J)V

    goto :goto_0
.end method

.method public setScheduleTaskLastRunTime(Ljava/lang/String;J)V
    .locals 1
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 154
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/util/Pref;->setScheduleTaskLastRunTime(Ljava/lang/String;J)V

    .line 155
    return-void
.end method
