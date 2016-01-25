.class Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "InputPincodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPincodeActivity$3;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/regist/InputPincodeActivity$3;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPincodeActivity$3;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/regist/InputPincodeActivity$3;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->this$1:Lcom/liquable/nemo/regist/InputPincodeActivity$3;

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
    .line 213
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->this$1:Lcom/liquable/nemo/regist/InputPincodeActivity$3;

    iget-object v1, v1, Lcom/liquable/nemo/regist/InputPincodeActivity$3;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$200(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->this$1:Lcom/liquable/nemo/regist/InputPincodeActivity$3;

    iget-object v2, v2, Lcom/liquable/nemo/regist/InputPincodeActivity$3;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    .line 219
    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->countryCodeIso3166:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$300(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 220
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/regist/model/RegistrationManager;->getPincodeForSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->this$1:Lcom/liquable/nemo/regist/InputPincodeActivity$3;

    iget-object v0, v0, Lcom/liquable/nemo/regist/InputPincodeActivity$3;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->showDialog(I)V

    .line 226
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->this$1:Lcom/liquable/nemo/regist/InputPincodeActivity$3;

    iget-object v0, v0, Lcom/liquable/nemo/regist/InputPincodeActivity$3;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->removeDialog(I)V

    .line 231
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->postExecuteSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 235
    const-string/jumbo v6, "SMS_SENT"

    .line 236
    .local v6, "SENT":Ljava/lang/String;
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->this$1:Lcom/liquable/nemo/regist/InputPincodeActivity$3;

    iget-object v0, v0, Lcom/liquable/nemo/regist/InputPincodeActivity$3;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "SMS_SENT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v7, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 241
    .local v4, "sentPI":Landroid/app/PendingIntent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->this$1:Lcom/liquable/nemo/regist/InputPincodeActivity$3;

    iget-object v3, v3, Lcom/liquable/nemo/regist/InputPincodeActivity$3;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->internationalCallingCode:Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$600(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->this$1:Lcom/liquable/nemo/regist/InputPincodeActivity$3;

    iget-object v3, v3, Lcom/liquable/nemo/regist/InputPincodeActivity$3;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$200(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "destinationAddress":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Your Cubie pincode:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 247
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v2, "send_sms_by_user"

    invoke-interface {v0, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->beginPhoneVerification(Ljava/lang/String;)V

    .line 248
    return-void
.end method
