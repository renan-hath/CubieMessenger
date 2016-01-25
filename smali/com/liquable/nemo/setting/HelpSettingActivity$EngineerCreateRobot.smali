.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCreateRobot;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerCreateRobot"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCreateRobot;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 179
    const-string/jumbo v0, "Create Robot"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCreateRobot;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual {v0}, Lcom/liquable/nemo/regist/RegistrationDaemon;->createRobot()V

    .line 185
    return-void
.end method
