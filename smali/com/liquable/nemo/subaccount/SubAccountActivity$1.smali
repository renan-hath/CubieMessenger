.class Lcom/liquable/nemo/subaccount/SubAccountActivity$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "SubAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/subaccount/SubAccountActivity;->generatePincode()V
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
        "Lcom/liquable/nemo/model/account/TimedPincodeDto;",
        ">;"
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
    .line 63
    iput-object p1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$1;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/account/TimedPincodeDto;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    iget-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$1;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    iget-object v1, v1, Lcom/liquable/nemo/subaccount/SubAccountActivity;->subAccount:Lcom/liquable/nemo/model/account/SubAccountDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/account/SubAccountDto;->getSubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/service/AccountService;->generateSubAccountSessionPincode(Ljava/lang/String;)Lcom/liquable/nemo/model/account/TimedPincodeDto;

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
    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/subaccount/SubAccountActivity$1;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/account/TimedPincodeDto;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/account/TimedPincodeDto;)V
    .locals 3
    .param p1, "result"    # Lcom/liquable/nemo/model/account/TimedPincodeDto;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$1;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    # getter for: Lcom/liquable/nemo/subaccount/SubAccountActivity;->pincode:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->access$000(Lcom/liquable/nemo/subaccount/SubAccountActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/TimedPincodeDto;->getPincode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$1;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/TimedPincodeDto;->getRemainSeconds()I

    move-result v1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/TimedPincodeDto;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->startCountDown(II)V

    .line 78
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/liquable/nemo/model/account/TimedPincodeDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/subaccount/SubAccountActivity$1;->postExecuteSuccess(Lcom/liquable/nemo/model/account/TimedPincodeDto;)V

    return-void
.end method
