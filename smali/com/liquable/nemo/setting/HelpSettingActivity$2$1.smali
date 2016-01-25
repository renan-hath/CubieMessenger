.class Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;
.super Landroid/os/AsyncTask;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity$2;->postExecuteSuccess(Ljava/lang/Void;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$2;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 739
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    new-instance v1, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;)V

    invoke-static {v0, v1}, Lcom/liquable/nemo/authenticator/AccountUtil;->removeAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 777
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 739
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity;->removeDialog(I)V

    .line 783
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isEnterDeleteAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037f

    .line 785
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    .line 786
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0069

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1$2;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;)V

    .line 787
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 800
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity;->showDialog(I)V

    .line 807
    return-void
.end method
