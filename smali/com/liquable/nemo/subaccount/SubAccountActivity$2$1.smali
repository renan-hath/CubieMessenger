.class Lcom/liquable/nemo/subaccount/SubAccountActivity$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "SubAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/subaccount/SubAccountActivity$2;->onClick(Landroid/view/View;)V
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
        "Lcom/liquable/nemo/model/account/SubAccountDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/subaccount/SubAccountActivity$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/subaccount/SubAccountActivity$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/subaccount/SubAccountActivity$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$2$1;->this$1:Lcom/liquable/nemo/subaccount/SubAccountActivity$2;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/account/SubAccountDto;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/service/AccountService;->registerSubAccount()Lcom/liquable/nemo/model/account/SubAccountDto;

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
    .line 89
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/subaccount/SubAccountActivity$2$1;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/account/SubAccountDto;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/account/SubAccountDto;)V
    .locals 2
    .param p1, "result"    # Lcom/liquable/nemo/model/account/SubAccountDto;

    .prologue
    .line 102
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->registerSubAccount()V

    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$2$1;->this$1:Lcom/liquable/nemo/subaccount/SubAccountActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/subaccount/SubAccountActivity$2;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    # getter for: Lcom/liquable/nemo/subaccount/SubAccountActivity;->createSubAccount:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->access$100(Lcom/liquable/nemo/subaccount/SubAccountActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$2$1;->this$1:Lcom/liquable/nemo/subaccount/SubAccountActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/subaccount/SubAccountActivity$2;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    # invokes: Lcom/liquable/nemo/subaccount/SubAccountActivity;->initSubAccountSession(Lcom/liquable/nemo/model/account/SubAccountDto;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->access$200(Lcom/liquable/nemo/subaccount/SubAccountActivity;Lcom/liquable/nemo/model/account/SubAccountDto;)V

    .line 105
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Lcom/liquable/nemo/model/account/SubAccountDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/subaccount/SubAccountActivity$2$1;->postExecuteSuccess(Lcom/liquable/nemo/model/account/SubAccountDto;)V

    return-void
.end method
