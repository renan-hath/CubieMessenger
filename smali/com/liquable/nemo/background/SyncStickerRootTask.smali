.class public Lcom/liquable/nemo/background/SyncStickerRootTask;
.super Lcom/liquable/nemo/background/SchedulableTask;
.source "SyncStickerRootTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final serialVersionUID:J = 0x73283517cc262c5fL


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
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    :try_start_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->updateStickerRoot(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncStickerRootTask;->runSuccessfully(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lcom/liquable/nemo/client/AsyncException;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncStickerRootTask;->runUnsuccessfully(Landroid/content/Context;)V

    goto :goto_0
.end method
