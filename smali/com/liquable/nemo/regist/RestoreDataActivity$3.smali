.class Lcom/liquable/nemo/regist/RestoreDataActivity$3;
.super Landroid/os/AsyncTask;
.source "RestoreDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/RestoreDataActivity;->step1RestoreBackup(Z)V
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
.field final synthetic this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

.field final synthetic val$needSync:Z


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    iput-boolean p2, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->val$needSync:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 122
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # getter for: Lcom/liquable/nemo/regist/RestoreDataActivity;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;
    invoke-static {v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$300(Lcom/liquable/nemo/regist/RestoreDataActivity;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/model/RegistrationManager;->isBackupExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-object v3

    .line 126
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # getter for: Lcom/liquable/nemo/regist/RestoreDataActivity;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;
    invoke-static {v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$300(Lcom/liquable/nemo/regist/RestoreDataActivity;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    .line 127
    invoke-static {v2}, Lcom/liquable/nemo/util/DeviceUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/regist/model/RegistrationManager;->restoreBackup(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->val$needSync:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->step2ListFriendsFromServer()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$400(Lcom/liquable/nemo/regist/RestoreDataActivity;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->successAndReturn()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$500(Lcom/liquable/nemo/regist/RestoreDataActivity;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->showDialog(I)V

    .line 143
    return-void
.end method
