.class Lcom/liquable/nemo/setting/SettingActivity$4;
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

.field final synthetic val$removeMediaFilesPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/SettingActivity;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/SettingActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/liquable/nemo/setting/SettingActivity$4;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/setting/SettingActivity$4;->val$removeMediaFilesPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 118
    .local v0, "b":Z
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Pref;->setRemoveMediaFiles(Z)V

    .line 119
    iget-object v1, p0, Lcom/liquable/nemo/setting/SettingActivity$4;->val$removeMediaFilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    const/4 v1, 0x0

    return v1
.end method
