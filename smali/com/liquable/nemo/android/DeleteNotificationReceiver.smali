.class public Lcom/liquable/nemo/android/DeleteNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeleteNotificationReceiver.java"


# static fields
.field private static final NOTIFICATION_ID:Ljava/lang/String; = "NOTIFICATION_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/liquable/nemo/android/NotifyManager$NotificationType;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .prologue
    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/android/DeleteNotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "NOTIFICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 14
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    if-eqz p2, :cond_0

    const-string/jumbo v0, "NOTIFICATION_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string/jumbo v0, "NOTIFICATION_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->MSG_SEND_FAILED:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelMessageSendFailedNotification()V

    goto :goto_0
.end method
