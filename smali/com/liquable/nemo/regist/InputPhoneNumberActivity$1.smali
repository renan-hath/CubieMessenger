.class Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "InputPhoneNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->applyPincode()V
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
.field final synthetic this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

.field final synthetic val$inputPhoneNumber:Ljava/lang/String;

.field final synthetic val$nickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    iput-object p3, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->val$inputPhoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->val$nickname:Ljava/lang/String;

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
    .line 98
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 101
    const-string/jumbo v4, ""

    .line 102
    .local v4, "mcc":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 104
    .local v5, "mnc":Ljava/lang/String;
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 105
    .local v7, "tel":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_0

    .line 106
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "networkOperator":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    .end local v6    # "networkOperator":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->val$inputPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .line 114
    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeIso3166:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$000(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 115
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->generateToken()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/regist/model/RegistrationManager;->requestPincode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "sms"

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->beginPhoneVerification(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->showDialog(I)V

    .line 127
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->removeDialog(I)V

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # setter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->hasEnteredApplyPincode:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$102(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;Z)Z

    .line 133
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 3
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 137
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->beginPhoneVerificationOnError(Ljava/lang/Throwable;)V

    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    const v1, 0x7f0d01c6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 4
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 145
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->beginPhoneVerificationOnError(Ljava/lang/Throwable;)V

    .line 147
    instance-of v1, p1, Lcom/liquable/nemo/model/InvalidSmsNumberException;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0d0305

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d03b3

    new-instance v3, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1$1;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;)V

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 161
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->val$inputPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->internationalCallingCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$200(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->val$nickname:Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->startInputPincodeActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$300(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
