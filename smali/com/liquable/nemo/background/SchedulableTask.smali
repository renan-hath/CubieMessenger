.class public abstract Lcom/liquable/nemo/background/SchedulableTask;
.super Ljava/lang/Object;
.source "SchedulableTask.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xa74e59b08de2d5L


# instance fields
.field private alarmId:I

.field private registeredInScheduler:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/liquable/nemo/background/SchedulableTask;->alarmId:I

    return v0
.end method

.method public abstract getAlarmType()I
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getScheduleInterval()J
.end method

.method public abstract getScheduleIntervalOnError()J
.end method

.method public final isRegisteredInScheduler()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/liquable/nemo/background/SchedulableTask;->registeredInScheduler:Z

    return v0
.end method

.method public runInScheduler(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    instance-of v0, p0, Lcom/liquable/nemo/background/BackgroundRunnable;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lcom/liquable/nemo/background/BackgroundRunnable;

    .end local p0    # "this":Lcom/liquable/nemo/background/SchedulableTask;
    invoke-static {p1, p0}, Lcom/liquable/nemo/background/BackgroundIntentService;->run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V

    .line 39
    :cond_0
    return-void
.end method

.method public runSuccessfully(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {}, Lcom/liquable/nemo/background/Scheduler;->getInstance()Lcom/liquable/nemo/background/Scheduler;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/liquable/nemo/background/Scheduler;->scheduleNextTime(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 47
    return-void
.end method

.method public runUnsuccessfully(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {}, Lcom/liquable/nemo/background/Scheduler;->getInstance()Lcom/liquable/nemo/background/Scheduler;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/liquable/nemo/background/Scheduler;->reschedue(Landroid/content/Context;Lcom/liquable/nemo/background/SchedulableTask;)V

    .line 55
    return-void
.end method

.method public setAlarmId(I)V
    .locals 1
    .param p1, "alarmId"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/liquable/nemo/background/SchedulableTask;->alarmId:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/background/SchedulableTask;->registeredInScheduler:Z

    .line 60
    return-void
.end method
