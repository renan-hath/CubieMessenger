.class public Lcom/liquable/nemo/phone/ConnectPhoneActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ConnectPhoneActivity.java"


# static fields
.field private static final CODE_SELECTED_REGION:I

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private countryCodeIso3166:Ljava/lang/String;

.field private countryCodeTextView:Landroid/widget/EditText;

.field private internationalCallingCode:Ljava/lang/String;

.field private phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeIso3166:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)Lcom/liquable/nemo/regist/PhoneEditText;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->internationalCallingCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->applyPincode()V

    return-void
.end method

.method private applyPincode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    invoke-virtual {v1}, Lcom/liquable/nemo/regist/PhoneEditText;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeIso3166:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    const v1, 0x7f0d0548

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 92
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    invoke-virtual {v1}, Lcom/liquable/nemo/regist/PhoneEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "inputPhoneNumber":Ljava/lang/String;
    new-instance v1, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;

    invoke-direct {v1, p0, p0, v0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;-><init>(Lcom/liquable/nemo/phone/ConnectPhoneActivity;Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Void;

    .line 91
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/phone/ConnectPhoneActivity$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadDefaultRegionCode()V
    .locals 3

    .prologue
    .line 95
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual {v1}, Lcom/liquable/nemo/regist/RegistrationDaemon;->getCountryNameAndCodeData()Ljava/util/Map;

    move-result-object v0

    .line 96
    .local v0, "countryNameAndCodeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const-string/jumbo v1, "countryName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "countryCode"

    .line 98
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->updateCountryNameAndCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Lcom/liquable/nemo/phone/ConnectPhoneActivity$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity$5;-><init>(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)V

    iput-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 176
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.regist.FINISH_CONNECT_PHONE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 186
    :cond_0
    return-void
.end method

.method private updateCountryNameAndCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "countryName"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getInstance()Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getCountryCodeIso3166ByCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeIso3166:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeIso3166:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeIso3166:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setCountryCodeIso3166(Ljava/lang/String;)V

    .line 194
    :cond_0
    iput-object p2, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->internationalCallingCode:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeTextView:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->unregisterBroadcastReceiver()V

    .line 105
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 106
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 112
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    const-string/jumbo v0, "countryName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "countryCode"

    .line 119
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->updateCountryNameAndCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d0128

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 127
    const v1, 0x7f030024

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->setContentView(I)V

    .line 129
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeTextView:Landroid/widget/EditText;

    .line 130
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->countryCodeTextView:Landroid/widget/EditText;

    new-instance v2, Lcom/liquable/nemo/phone/ConnectPhoneActivity$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity$2;-><init>(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/regist/PhoneEditText;

    iput-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    .line 140
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    new-instance v2, Lcom/liquable/nemo/phone/ConnectPhoneActivity$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity$3;-><init>(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/regist/PhoneEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 151
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    invoke-virtual {v1}, Lcom/liquable/nemo/regist/PhoneEditText;->requestFocus()Z

    .line 152
    invoke-direct {p0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->loadDefaultRegionCode()V

    .line 154
    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "requestPincodeBtn":Landroid/view/View;
    new-instance v1, Lcom/liquable/nemo/phone/ConnectPhoneActivity$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity$4;-><init>(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-direct {p0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->registerBroadcastReceiver()V

    .line 163
    return-void
.end method
