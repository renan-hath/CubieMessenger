.class Lcom/liquable/nemo/android/service/ChattingAndroidService$11;
.super Landroid/os/AsyncTask;
.source "ChattingAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$11;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 499
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$11;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$11;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$900(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "ACTION_BACKUP running"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 503
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->cleaner:Lcom/liquable/nemo/db/Cleaner;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/Cleaner;->cleanReadAck()V

    .line 504
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->cleaner:Lcom/liquable/nemo/db/Cleaner;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/Cleaner;->cleanOldUnknownMessage()V

    .line 505
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->backup:Lcom/liquable/nemo/db/Backup;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/db/Backup;->backup(Ljava/lang/String;)Z

    .line 506
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->archiveMessages(J)V

    .line 507
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->truncateDeletedMessageIds()V

    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 499
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$11;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$11;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # invokes: Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduleBackup()V
    invoke-static {v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$1000(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    .line 514
    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$700()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$700()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 517
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 521
    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$700()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 522
    return-void
.end method
