.class Lcom/liquable/nemo/setting/NotificationSettingActivity$10;
.super Ljava/lang/Object;
.source "NotificationSettingActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


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
    .line 199
    iput-object p1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$10;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 202
    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    .line 203
    .local v0, "startTime":Ljava/util/Date;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getNotificationEndTime()Ljava/util/Date;

    move-result-object v6

    .line 204
    .local v6, "endTimeFromPref":Ljava/util/Date;
    invoke-virtual {v0, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$10;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    const v3, 0x7f0d01c7

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2, p2, p3}, Lcom/liquable/nemo/util/Pref;->setNotificationStartTime(II)V

    .line 213
    # getter for: Lcom/liquable/nemo/setting/NotificationSettingActivity;->dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getNotificationStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, "formattedStartTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$10;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/NotificationSettingActivity;->notificationTimeStartPref:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->access$200(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$10;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    const v4, 0x7f0d03ab

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
