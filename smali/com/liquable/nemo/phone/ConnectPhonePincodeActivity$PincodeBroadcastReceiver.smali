.class Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$PincodeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectPhonePincodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PincodeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$PincodeBroadcastReceiver;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$PincodeBroadcastReceiver;-><init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/regist/RegistrationDaemon;->extractSmsPincode(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "pincode":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$PincodeBroadcastReceiver;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    # getter for: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->access$100(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$PincodeBroadcastReceiver;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    # getter for: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->access$100(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 76
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$PincodeBroadcastReceiver;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    # invokes: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->connectPhone()V
    invoke-static {v1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->access$000(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)V

    goto :goto_0
.end method
