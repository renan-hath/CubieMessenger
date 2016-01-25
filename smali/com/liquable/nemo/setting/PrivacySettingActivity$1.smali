.class Lcom/liquable/nemo/setting/PrivacySettingActivity$1;
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
    .line 48
    iput-object p1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$1;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 52
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 53
    .local v0, "isChecked":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$1;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/friend/AccountDaemon;->updateSpacePublicProfile(Ljava/lang/Boolean;)Lcom/liquable/future/IFuture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/setting/PrivacySettingActivity$1$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity$1$1;-><init>(Lcom/liquable/nemo/setting/PrivacySettingActivity$1;)V

    invoke-interface {v1, v2}, Lcom/liquable/future/IFuture;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    .line 60
    const/4 v1, 0x0

    return v1
.end method
