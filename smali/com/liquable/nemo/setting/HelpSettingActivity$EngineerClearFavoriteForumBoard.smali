.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerClearFavoriteForumBoard;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerClearFavoriteForumBoard"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerClearFavoriteForumBoard;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 155
    const-string/jumbo v0, "\u6e05\u9664 Favorite Forum Board"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerClearFavoriteForumBoard;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ForumDaemon;->clearFavoriteForumBoard()V

    .line 161
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerClearFavoriteForumBoard;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    const-string/jumbo v1, "Clear favorite forum boards success!"

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    return-void
.end method
