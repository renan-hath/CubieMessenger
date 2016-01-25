.class Lcom/liquable/nemo/MainActivity$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/MainActivity;->goToNoticeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/liquable/nemo/notice/model/ImportNoticeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/MainActivity;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/MainActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showToast"    # Z

    .prologue
    .line 233
    iput-object p1, p0, Lcom/liquable/nemo/MainActivity$3;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/notice/model/ImportNoticeResult;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/model/NoticeManager;->importSystemNoticesFromServer()Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 233
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/MainActivity$3;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/notice/model/ImportNoticeResult;)V
    .locals 5
    .param p1, "result"    # Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNoticeViewUpdate()V

    .line 253
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/android/NotifyManager;->notifyNotices(Lcom/liquable/nemo/notice/model/ImportNoticeResult;)V

    .line 254
    invoke-virtual {p1}, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->getNewNotices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/INotice;

    .line 255
    .local v0, "baseNotice":Lcom/liquable/nemo/notice/INotice;
    const-class v2, Lcom/liquable/nemo/notice/StickerThumbnailNotice;

    invoke-interface {v0, v2}, Lcom/liquable/nemo/notice/INotice;->isType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setStickerShopUpdated(Z)V

    .line 261
    .end local v0    # "baseNotice":Lcom/liquable/nemo/notice/INotice;
    :cond_1
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    new-instance v2, Lcom/liquable/nemo/background/ListSystemNoticesTask;

    invoke-direct {v2}, Lcom/liquable/nemo/background/ListSystemNoticesTask;-><init>()V

    invoke-virtual {v2}, Lcom/liquable/nemo/background/ListSystemNoticesTask;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 261
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/background/Scheduler;->setScheduleTaskLastRunTime(Ljava/lang/String;J)V

    .line 263
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    check-cast p1, Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/MainActivity$3;->postExecuteSuccess(Lcom/liquable/nemo/notice/model/ImportNoticeResult;)V

    return-void
.end method
