.class public Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ConnectPhonePincodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$PincodeBroadcastReceiver;,
        Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$OnConnectPhoneBtnClickListener;,
        Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;
    }
.end annotation


# instance fields
.field private countryCodeIso3166:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private pincodeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private pincodeEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->connectPhone()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->countryCodeIso3166:Ljava/lang/String;

    return-object v0
.end method

.method private connectPhone()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;-><init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 137
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;->execute([Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method private registerPincodeBroadcastReceiver()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$PincodeBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$PincodeBroadcastReceiver;-><init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;)V

    iput-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method private unregisterPincodeBroadcastReceiver()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d0126

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 143
    const v3, 0x7f030025

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->access$400(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->phoneNumber:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->getCountryCodeIso3166(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->access$500(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->countryCodeIso3166:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->getInternationalCallingCode(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->access$600(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "internationalCallingCode":Ljava/lang/String;
    const v3, 0x7f08009f

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->pincodeEditText:Landroid/widget/EditText;

    .line 151
    const v3, 0x7f0800a0

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "connectPhoneBtn":Landroid/view/View;
    new-instance v3, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$OnConnectPhoneBtnClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$OnConnectPhoneBtnClickListener;-><init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v3, 0x7f08009d

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, "inputtedPhoneNumber":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method protected onLoggedInStart()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->registerPincodeBroadcastReceiver()V

    .line 160
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->unregisterPincodeBroadcastReceiver()V

    .line 165
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onStop()V

    .line 166
    return-void
.end method
