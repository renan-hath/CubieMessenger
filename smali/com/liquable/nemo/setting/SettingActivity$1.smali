.class Lcom/liquable/nemo/setting/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/setting/SettingActivity$1;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 51
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 52
    .local v0, "enabled":Ljava/lang/Boolean;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    const-string/jumbo v2, "SettingActivity"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableAutoSyncContact(Ljava/lang/String;Z)V

    .line 53
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setAutoScheduleSyncContactsEnable(Z)V

    .line 54
    iget-object v1, p0, Lcom/liquable/nemo/setting/SettingActivity$1;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    # getter for: Lcom/liquable/nemo/setting/SettingActivity;->autoSyncContactPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/liquable/nemo/setting/SettingActivity;->access$000(Lcom/liquable/nemo/setting/SettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isAutoScheduleSyncContactsEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
