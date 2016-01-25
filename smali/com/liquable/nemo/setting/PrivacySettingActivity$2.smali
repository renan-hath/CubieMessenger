.class Lcom/liquable/nemo/setting/PrivacySettingActivity$2;
.super Ljava/lang/Object;
.source "PrivacySettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/PrivacySettingActivity;->onSettingCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/PrivacySettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/PrivacySettingActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$2;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 74
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 75
    .local v0, "isChecked":Ljava/lang/Boolean;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->privacyHideRecommendListSetting(Z)V

    .line 76
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setHideRecommendList(Z)V

    .line 77
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$2;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    # getter for: Lcom/liquable/nemo/setting/PrivacySettingActivity;->hideRecommendListPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->access$100(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isHideRecommendList()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendListReload()V

    .line 79
    const/4 v1, 0x0

    return v1
.end method
