.class public Lcom/liquable/nemo/background/ScheduleAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/background/Scheduler;->findTaskToRun(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 13
    return-void
.end method
