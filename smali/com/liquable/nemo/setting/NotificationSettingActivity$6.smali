.class Lcom/liquable/nemo/setting/NotificationSettingActivity$6;
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
    .line 135
    iput-object p1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$6;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isSmartNotificationOn()Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string/jumbo v0, "notify_new_arrival_at_bottom"

    return-object v0
.end method

.method public set(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 148
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/Pref;->setSmartNotification(Z)V

    .line 149
    return-void
.end method
