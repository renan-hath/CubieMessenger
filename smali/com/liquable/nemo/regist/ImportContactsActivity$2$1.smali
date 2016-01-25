.class Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ImportContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/ImportContactsActivity$2;->onClick(Landroid/view/View;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/friend/model/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/ImportContactsActivity$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/regist/ImportContactsActivity$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

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
    .line 74
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 78
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/AccountDaemon;->importContacts(Z)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "importContacts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    const-string/jumbo v2, "ImportContactsActivity"

    invoke-interface {v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableAutoSyncContact(Ljava/lang/String;Z)V

    .line 81
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v3}, Lcom/liquable/nemo/util/Pref;->setAutoScheduleSyncContactsEnable(Z)V

    .line 83
    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/ImportContactsActivity;->showDialog(I)V

    .line 89
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->val$okBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->val$skipBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/ImportContactsActivity;->removeDialog(I)V

    .line 96
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "contacts"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->importFriends(Ljava/lang/String;I)V

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    const v2, 0x7f0d02e9

    .line 104
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/regist/ImportContactsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1$1;-><init>(Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;)V

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportContactsActivity;->finishAndGoToImportFacebookFriends()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->access$000(Lcom/liquable/nemo/regist/ImportContactsActivity;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v2, v2, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    const-class v3, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/ImportContactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->finish()V

    goto :goto_0
.end method
