.class final Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ImportFacebookFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImportFacebookFriendsTask"
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
.field private final facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

.field final synthetic this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    .line 42
    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p3, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .param p4, "x3"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$1;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;-><init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

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
    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
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
    .line 49
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->facebookDaemon:Lcom/liquable/nemo/facebook/FacebookDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/facebook/FacebookDaemon;->importFacebookOneWayFriends(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->showDialog(I)V

    .line 55
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->removeDialog(I)V

    .line 60
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 1
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finishAndGoToSelectMyAccountIcon()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$000(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    .line 65
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 1
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finishAndGoToSelectMyAccountIcon()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$000(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    .line 70
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 3
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
    .line 74
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "facebook"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->importFriends(Ljava/lang/String;I)V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    const v2, 0x7f0d02ec

    .line 77
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask$1;-><init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finishAndGoToSelectMyAccountIcon()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$000(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    goto :goto_0
.end method
