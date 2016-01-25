.class Lcom/liquable/nemo/setting/HelpSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerEndPointReconnect:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;
    invoke-static {v0}, Lcom/liquable/nemo/setting/HelpSettingActivity;->access$200(Lcom/liquable/nemo/setting/HelpSettingActivity;)Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    move-result-object v0

    # invokes: Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->updateDisconnectPreference(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->access$300(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;Landroid/content/Intent;)V

    .line 692
    return-void
.end method
