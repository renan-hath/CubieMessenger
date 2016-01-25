.class Lcom/liquable/nemo/setting/NotificationSettingActivity$12;
.super Ljava/lang/Object;
.source "NotificationSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/NotificationSettingActivity;->initAllNotificationEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

.field final synthetic val$allnotificationEnablePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$12;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$12;->val$allnotificationEnablePref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 277
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 278
    .local v0, "isEnabled":Z
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/util/Pref;->setAllNotificationEnable(Z)V

    .line 279
    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$12;->val$allnotificationEnablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 280
    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$12;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/NotificationSettingActivity;->prefs:[Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;
    invoke-static {v2}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->access$500(Lcom/liquable/nemo/setting/NotificationSettingActivity;)[Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 281
    .local v1, "pref":Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;
    iget-object v6, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$12;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    # invokes: Lcom/liquable/nemo/setting/NotificationSettingActivity;->initNotificationPreference(Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;)V
    invoke-static {v6, v1}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->access$600(Lcom/liquable/nemo/setting/NotificationSettingActivity;Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;)V

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "pref":Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;
    :cond_0
    return v3
.end method
