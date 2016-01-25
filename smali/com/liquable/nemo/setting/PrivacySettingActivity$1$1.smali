.class Lcom/liquable/nemo/setting/PrivacySettingActivity$1$1;
.super Ljava/lang/Object;
.source "PrivacySettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/PrivacySettingActivity$1;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/PrivacySettingActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/PrivacySettingActivity$1;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$1$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$1$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$1;

    iget-object v0, v0, Lcom/liquable/nemo/setting/PrivacySettingActivity$1;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    # getter for: Lcom/liquable/nemo/setting/PrivacySettingActivity;->spacePublicProfile:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->access$000(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isSpacePublicProfile()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    return-void
.end method
