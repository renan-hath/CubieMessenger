.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerReloadNotices;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerReloadNotices"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/liquable/nemo/notice/model/ImportNoticeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 313
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerReloadNotices;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 314
    const-string/jumbo v0, "Click to reload all notices"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerReloadNotices;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

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
    .line 320
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/model/NoticeManager;->deleteAllNoticesForTest()V

    .line 321
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
    .line 312
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerReloadNotices;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    move-result-object v0

    return-object v0
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/notice/model/ImportNoticeResult;)V
    .locals 4
    .param p1, "result"    # Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    .prologue
    .line 326
    invoke-virtual {p1}, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/Pref;->setLastReadNoticeId(J)V

    .line 328
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNoticeViewUpdate()V

    .line 329
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/android/NotifyManager;->notifyNotices(Lcom/liquable/nemo/notice/model/ImportNoticeResult;)V

    .line 330
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

    .line 331
    .local v0, "baseNotice":Lcom/liquable/nemo/notice/INotice;
    const-class v2, Lcom/liquable/nemo/notice/StickerThumbnailNotice;

    invoke-interface {v0, v2}, Lcom/liquable/nemo/notice/INotice;->isType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setStickerShopUpdated(Z)V

    .line 337
    .end local v0    # "baseNotice":Lcom/liquable/nemo/notice/INotice;
    :cond_1
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 312
    check-cast p1, Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerReloadNotices;->postExecuteSuccess(Lcom/liquable/nemo/notice/model/ImportNoticeResult;)V

    return-void
.end method
