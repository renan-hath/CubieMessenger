.class public Lcom/liquable/nemo/background/RemoveMediaFileTask;
.super Lcom/liquable/nemo/background/SchedulableTask;
.source "RemoveMediaFileTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final serialVersionUID:J = 0xdea9aecc69b8185L


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
    const/4 v0, 0x0

    return v0
.end method

.method public getScheduleInterval()J
    .locals 2

    .prologue
    .line 19
    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method public getScheduleIntervalOnError()J
    .locals 2

    .prologue
    .line 24
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public runInBackground(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isRemoveMediaFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/liquable/nemo/util/FileCacheManager;->removeMediaFiles(Landroid/content/Context;)V

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/RemoveMediaFileTask;->runSuccessfully(Landroid/content/Context;)V

    .line 33
    return-void
.end method
