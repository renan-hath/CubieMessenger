.class public Lcom/liquable/nemo/background/C2DMRegisterIdUpdateTask;
.super Lcom/liquable/nemo/background/SchedulableTask;
.source "C2DMRegisterIdUpdateTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final serialVersionUID:J = -0x55e2f36f1765ca35L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/liquable/nemo/background/SchedulableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmType()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public getScheduleInterval()J
    .locals 2

    .prologue
    .line 19
    const-wide/32 v0, 0x2932e00

    return-wide v0
.end method

.method public getScheduleIntervalOnError()J
    .locals 2

    .prologue
    .line 24
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public runInBackground(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v0, Lcom/google/android/c2dm/C2DMessaging;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/C2DMRegisterIdUpdateTask;->runSuccessfully(Landroid/content/Context;)V

    .line 32
    return-void
.end method
