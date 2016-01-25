.class Lcom/liquable/nemo/setting/NotificationSettingActivity$13;
.super Ljava/lang/Object;
.source "NotificationSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/NotificationSettingActivity;->initNotificationPreference(Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

.field final synthetic val$checkboxPref:Landroid/preference/CheckBoxPreference;

.field final synthetic val$pref:Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$13;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$13;->val$pref:Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

    iput-object p3, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$13;->val$checkboxPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 296
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 297
    .local v0, "value":Z
    iget-object v1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$13;->val$pref:Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;->set(Z)V

    .line 298
    iget-object v1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$13;->val$checkboxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    const/4 v1, 0x0

    return v1
.end method
