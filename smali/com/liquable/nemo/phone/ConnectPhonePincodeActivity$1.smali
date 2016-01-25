.class Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ConnectPhonePincodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->connectPhone()V
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
.field final synthetic this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

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
    .line 89
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    # getter for: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->access$100(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    .line 94
    # getter for: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->access$200(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    .line 95
    # getter for: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->countryCodeIso3166:Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->access$300(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/regist/RegistrationDaemon;->connectPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->showDialog(I)V

    .line 102
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->removeDialog(I)V

    .line 107
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 7
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 111
    instance-of v3, p1, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 112
    check-cast v1, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;

    .line 113
    .local v1, "phoneAlreadyInUseException":Lcom/liquable/nemo/model/PhoneAlreadyInUseException;
    iget-object v3, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    .line 114
    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-static {v3, v4}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 115
    .local v2, "resId":I
    iget-object v3, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 116
    invoke-virtual {v1}, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->getNickname()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 117
    invoke-virtual {v1}, Lcom/liquable/nemo/model/PhoneAlreadyInUseException;->getUsername()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 115
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    invoke-static {v3}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 120
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03b3

    const/4 v5, 0x0

    .line 121
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 126
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "phoneAlreadyInUseException":Lcom/liquable/nemo/model/PhoneAlreadyInUseException;
    .end local v2    # "resId":I
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    const v2, 0x7f0d0127

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 132
    new-instance v0, Lcom/liquable/nemo/friend/FindFriendsInContactsActivity$CreateIntent;

    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/FindFriendsInContactsActivity$CreateIntent;-><init>(Landroid/content/Context;Z)V

    .line 134
    .local v0, "intent":Lcom/liquable/nemo/friend/FindFriendsInContactsActivity$CreateIntent;
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->finish()V

    .line 136
    return-void
.end method
