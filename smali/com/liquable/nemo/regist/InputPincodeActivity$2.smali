.class Lcom/liquable/nemo/regist/InputPincodeActivity$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "InputPincodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPincodeActivity;->applyAccount()V
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
        "Lcom/liquable/nemo/model/account/ProfileDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPincodeActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->pincodeEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$000(Lcom/liquable/nemo/regist/InputPincodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    .line 107
    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$200(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    .line 108
    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->countryCodeIso3166:Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$300(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    .line 109
    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->nickname:Ljava/lang/String;
    invoke-static {v4}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$400(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/regist/RegistrationDaemon;->findOrCreateProfileWithPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;

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
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->showDialog(I)V

    .line 117
    :cond_0
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->removeDialog(I)V

    .line 122
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 126
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "sms"

    invoke-interface {v0, v1, p1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->phoneVerificationError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 127
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 1
    .param p1, "result"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # invokes: Lcom/liquable/nemo/regist/InputPincodeActivity;->startRestoreDataActivity(Lcom/liquable/nemo/model/account/ProfileDto;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$500(Lcom/liquable/nemo/regist/InputPincodeActivity;Lcom/liquable/nemo/model/account/ProfileDto;)V

    .line 133
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/liquable/nemo/model/account/ProfileDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->postExecuteSuccess(Lcom/liquable/nemo/model/account/ProfileDto;)V

    return-void
.end method
