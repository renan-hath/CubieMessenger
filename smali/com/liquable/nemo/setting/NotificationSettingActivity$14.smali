.class Lcom/liquable/nemo/setting/NotificationSettingActivity$14;
.super Ljava/lang/Object;
.source "NotificationSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/NotificationSettingActivity;->initNotifyTimePrefs()V
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
    .line 316
    iput-object p1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$14;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$14;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    # invokes: Lcom/liquable/nemo/setting/NotificationSettingActivity;->getStartTime()Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;
    invoke-static {v0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->access$700(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;

    move-result-object v6

    .line 321
    .local v6, "startTime2":Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$14;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity$14;->this$0:Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .line 322
    # getter for: Lcom/liquable/nemo/setting/NotificationSettingActivity;->startTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-static {v2}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->access$800(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-result-object v2

    iget v3, v6, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;->hour:I

    iget v4, v6, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;->minute:I

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 325
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 326
    const/4 v0, 0x0

    return v0
.end method
