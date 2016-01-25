.class Lcom/liquable/nemo/setting/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 74
    iput-object p1, p0, Lcom/liquable/nemo/setting/SettingActivity$3;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 77
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->backupManually()V

    .line 79
    new-instance v0, Lcom/liquable/nemo/setting/SettingActivity$3$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/SettingActivity$3$1;-><init>(Lcom/liquable/nemo/setting/SettingActivity$3;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 106
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/SettingActivity$3$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    const/4 v0, 0x1

    return v0
.end method
