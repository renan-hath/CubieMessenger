.class Lcom/liquable/nemo/setting/HelpSettingActivity$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;->deleteAccount()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 715
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 719
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/user/model/UserManager;->disableAccount(Ljava/lang/String;)V

    .line 720
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity;->showDialog(I)V

    .line 726
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity;->removeDialog(I)V

    .line 731
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 715
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 735
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setEnterDeleteAccount(Z)V

    .line 737
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    const-class v3, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 739
    new-instance v0, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 808
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 810
    return-void
.end method
