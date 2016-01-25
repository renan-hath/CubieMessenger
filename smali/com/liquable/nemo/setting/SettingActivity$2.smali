.class Lcom/liquable/nemo/setting/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/SettingActivity;->onSettingCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/SettingActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/liquable/nemo/setting/SettingActivity$2;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 65
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    const-string/jumbo v2, "setting"

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToStickerManage(Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/setting/SettingActivity$2;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    const-class v2, Lcom/liquable/nemo/sticker/ManageStickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/setting/SettingActivity$2;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    const/4 v1, 0x1

    return v1
.end method
