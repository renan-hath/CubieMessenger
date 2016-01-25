.class Lcom/liquable/nemo/setting/PrivacySettingActivity$4;
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
    .line 102
    iput-object p1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

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

    .line 106
    new-instance v0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;

    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    invoke-direct {v0, p0, v1, p2}, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;-><init>(Lcom/liquable/nemo/setting/PrivacySettingActivity$4;Landroid/content/Context;Ljava/lang/Object;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 145
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->execute([Ljava/lang/Object;)V

    .line 147
    return v2
.end method
