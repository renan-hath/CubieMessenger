.class Lcom/liquable/nemo/setting/PrivacySettingActivity$6;
.super Ljava/lang/Object;
.source "PrivacySettingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;


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
    .line 168
    iput-object p1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$6;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$6;->val$passcodeLockPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePasscode(Ljava/lang/String;)V
    .locals 3
    .param p1, "createdPasscode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 171
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/Pref;->setPasscode(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$6;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    const v1, 0x7f0d03bf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$6;->val$passcodeLockPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->setPasscodeLock()V

    .line 177
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/Pref;->setCubieHeadEnabled(Z)V

    .line 178
    return-void
.end method

.method public onFailToCreatePasscode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$6;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    const v1, 0x7f0d03bd

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$6;->val$passcodeLockPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    return-void
.end method
