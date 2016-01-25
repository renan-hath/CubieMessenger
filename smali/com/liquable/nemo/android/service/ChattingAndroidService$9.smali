.class Lcom/liquable/nemo/android/service/ChattingAndroidService$9;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ChattingAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService;->migrateRegistrationIdToNemo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

.field final synthetic val$registrationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showToast"    # Z

    .prologue
    .line 388
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    iput-object p4, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->val$registrationId:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 392
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->val$registrationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/client/service/AccountService;->migrateFromC2dmToGcm(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 388
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 399
    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$700()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 400
    return-void
.end method

.method protected postExecute()V
    .locals 1

    .prologue
    .line 404
    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$700()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$700()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 407
    :cond_0
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 4
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$900(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "migrate c2dm/gcm registrationId to nemo failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .line 412
    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/liquable/nemo/client/AsyncException;->getErrorMessageResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 417
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-static {v0}, Lcom/google/android/c2dm/C2DMessaging;->clearC2DMRegistrationId(Landroid/content/Context;)V

    .line 419
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->val$registrationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/c2dm/C2DMessaging;->setGcmRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->migrateFromC2DMToGCM()V

    .line 422
    :cond_0
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 388
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
