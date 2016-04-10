.class public Lcom/liquable/nemo/background/ListSystemNoticesTask;
.super Lcom/liquable/nemo/background/SchedulableTask;
.source "ListSystemNoticesTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final serialVersionUID:J = 0x6769ce41ae26533L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/liquable/nemo/background/SchedulableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmType()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getScheduleInterval()J
    .locals 2

    .prologue
    .line 24
    const-wide/32 v0, 0x1499700

    return-wide v0
.end method

.method public getScheduleIntervalOnError()J
    .locals 2

    .prologue
    .line 29
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public runInBackground(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 35
    .local v4, "rightNow":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 36
    .local v2, "h":I
    const/16 v5, 0x0

    if-ge v2, v5, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/ListSystemNoticesTask;->runSuccessfully(Landroid/content/Context;)V

    .line 58
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/notice/model/NoticeManager;->importSystemNoticesFromServer()Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    move-result-object v3

    .line 44
    .local v3, "importResult":Lcom/liquable/nemo/notice/model/ImportNoticeResult;
    invoke-virtual {v3}, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 45
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNoticeViewUpdate()V

    .line 46
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v5, v3}, Lcom/liquable/nemo/android/NotifyManager;->notifyNotices(Lcom/liquable/nemo/notice/model/ImportNoticeResult;)V

    .line 47
    invoke-virtual {v3}, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->getNewNotices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/INotice;

    .line 48
    .local v0, "baseNotice":Lcom/liquable/nemo/notice/INotice;
    const-class v6, Lcom/liquable/nemo/notice/StickerThumbnailNotice;

    invoke-interface {v0, v6}, Lcom/liquable/nemo/notice/INotice;->isType(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 49
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Pref;->setStickerShopUpdated(Z)V

    .line 54
    .end local v0    # "baseNotice":Lcom/liquable/nemo/notice/INotice;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/ListSystemNoticesTask;->runSuccessfully(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v3    # "importResult":Lcom/liquable/nemo/notice/model/ImportNoticeResult;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Lcom/liquable/nemo/client/AsyncException;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/ListSystemNoticesTask;->runUnsuccessfully(Landroid/content/Context;)V

    goto :goto_0
.end method
