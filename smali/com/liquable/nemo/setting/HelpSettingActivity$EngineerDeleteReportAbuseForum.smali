.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteReportAbuseForum;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerDeleteReportAbuseForum"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 498
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteReportAbuseForum;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 499
    const-string/jumbo v0, "Delete Report abuse forum board/article"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteReportAbuseForum;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 504
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/ForumManager;->deleteReportAbuse()V

    .line 505
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteReportAbuseForum;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    const-string/jumbo v1, "Delete report abuse board/article success!"

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 506
    return-void
.end method
