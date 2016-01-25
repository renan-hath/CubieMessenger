.class Lcom/liquable/nemo/subaccount/SubAccountActivity$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "SubAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/subaccount/SubAccountActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
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
        "Lcom/liquable/nemo/model/account/SubAccountDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/subaccount/SubAccountActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/subaccount/SubAccountActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$3;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

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
    .line 145
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/subaccount/SubAccountActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/SubAccountDto;",
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
    .line 150
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/service/AccountService;->listSubAccounts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/subaccount/SubAccountActivity$3;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/SubAccountDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/SubAccountDto;>;"
    const/4 v2, 0x0

    .line 158
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$3;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    # getter for: Lcom/liquable/nemo/subaccount/SubAccountActivity;->createSubAccount:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->access$100(Lcom/liquable/nemo/subaccount/SubAccountActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$3;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/SubAccountDto;

    # invokes: Lcom/liquable/nemo/subaccount/SubAccountActivity;->initSubAccountSession(Lcom/liquable/nemo/model/account/SubAccountDto;)V
    invoke-static {v1, v0}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->access$200(Lcom/liquable/nemo/subaccount/SubAccountActivity;Lcom/liquable/nemo/model/account/SubAccountDto;)V

    goto :goto_0
.end method
