.class Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ConnectPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/phone/ConnectPhoneActivity;->applyPincode()V
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
.field final synthetic this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

.field final synthetic val$inputPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/phone/ConnectPhoneActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/phone/ConnectPhoneActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    iput-object p3, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->val$inputPhoneNumber:Ljava/lang/String;

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
    .line 59
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->val$inputPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    # getter for: Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeIso3166:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->access$000(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/regist/RegistrationDaemon;->requestPincode(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->showDialog(I)V

    .line 70
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->removeDialog(I)V

    .line 75
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 79
    # getter for: Lcom/liquable/nemo/phone/ConnectPhoneActivity;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "NemoManagers.registrationDaemon.requestPincode DomainException"

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 85
    new-instance v0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;

    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    iget-object v2, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .line 86
    # getter for: Lcom/liquable/nemo/phone/ConnectPhoneActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;
    invoke-static {v2}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->access$200(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)Lcom/liquable/nemo/regist/PhoneEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/regist/PhoneEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .line 87
    # getter for: Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeIso3166:Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->access$000(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .line 88
    # getter for: Lcom/liquable/nemo/phone/ConnectPhoneActivity;->internationalCallingCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->access$300(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
