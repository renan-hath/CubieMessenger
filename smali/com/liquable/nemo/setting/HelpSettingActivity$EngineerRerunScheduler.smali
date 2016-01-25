.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRerunScheduler;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerRerunScheduler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 341
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRerunScheduler;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 342
    const-string/jumbo v0, "\u91cd\u8dd1 Scheduler"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRerunScheduler;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 347
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    new-instance v1, Lcom/liquable/nemo/background/SyncAllContactsTask;

    invoke-direct {v1}, Lcom/liquable/nemo/background/SyncAllContactsTask;-><init>()V

    invoke-virtual {v1}, Lcom/liquable/nemo/background/SyncAllContactsTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/background/Scheduler;->setScheduleTaskLastRunTime(Ljava/lang/String;J)V

    .line 348
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    new-instance v1, Lcom/liquable/nemo/background/SyncModifiedContactsTask;

    invoke-direct {v1}, Lcom/liquable/nemo/background/SyncModifiedContactsTask;-><init>()V

    invoke-virtual {v1}, Lcom/liquable/nemo/background/SyncModifiedContactsTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/background/Scheduler;->setScheduleTaskLastRunTime(Ljava/lang/String;J)V

    .line 349
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    new-instance v1, Lcom/liquable/nemo/background/SyncStickerRootTask;

    invoke-direct {v1}, Lcom/liquable/nemo/background/SyncStickerRootTask;-><init>()V

    invoke-virtual {v1}, Lcom/liquable/nemo/background/SyncStickerRootTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/background/Scheduler;->setScheduleTaskLastRunTime(Ljava/lang/String;J)V

    .line 350
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    new-instance v1, Lcom/liquable/nemo/background/ListSystemNoticesTask;

    invoke-direct {v1}, Lcom/liquable/nemo/background/ListSystemNoticesTask;-><init>()V

    invoke-virtual {v1}, Lcom/liquable/nemo/background/ListSystemNoticesTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/background/Scheduler;->setScheduleTaskLastRunTime(Ljava/lang/String;J)V

    .line 351
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    new-instance v1, Lcom/liquable/nemo/background/C2DMRegisterIdUpdateTask;

    invoke-direct {v1}, Lcom/liquable/nemo/background/C2DMRegisterIdUpdateTask;-><init>()V

    invoke-virtual {v1}, Lcom/liquable/nemo/background/C2DMRegisterIdUpdateTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/background/Scheduler;->setScheduleTaskLastRunTime(Ljava/lang/String;J)V

    .line 352
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    new-instance v1, Lcom/liquable/nemo/background/SyncAdsTask;

    invoke-direct {v1}, Lcom/liquable/nemo/background/SyncAdsTask;-><init>()V

    invoke-virtual {v1}, Lcom/liquable/nemo/background/SyncAdsTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/background/Scheduler;->setScheduleTaskLastRunTime(Ljava/lang/String;J)V

    .line 353
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRerunScheduler;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/background/Scheduler;->init(Landroid/content/Context;J)V

    .line 354
    return-void
.end method
