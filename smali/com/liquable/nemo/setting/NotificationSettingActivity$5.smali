.class Lcom/liquable/nemo/setting/NotificationSettingActivity$5;
.super Ljava/lang/Object;
.source "NotificationSettingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/NotificationSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$5;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isCubieHeadAlwaysOn()Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "cubie_head_always_on"

    return-object v0
.end method

.method public set(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 129
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/Pref;->setCubieHeadAlwaysOn(Z)V

    .line 130
    if-nez p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$5;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->dismiss(Landroid/content/Context;)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$5;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    # invokes: Lcom/liquable/nemo/setting/NotificationSettingActivity;->getCubieHeadState()Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->access$100(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->setCubieHeadState(Ljava/lang/String;)V

    .line 134
    return-void
.end method
