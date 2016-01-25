.class Lcom/liquable/nemo/setting/PrivacySettingActivity$5;
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

.field final synthetic val$passcodeLockPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/PrivacySettingActivity;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/PrivacySettingActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$5;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$5;->val$passcodeLockPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 158
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getPasscode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setPasscode(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$5;->val$passcodeLockPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    :goto_0
    return v2

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$5;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    # getter for: Lcom/liquable/nemo/setting/PrivacySettingActivity;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;
    invoke-static {v0}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->access$400(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Lcom/liquable/nemo/setting/PasscodeLockDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->showDialog()V

    goto :goto_0
.end method
