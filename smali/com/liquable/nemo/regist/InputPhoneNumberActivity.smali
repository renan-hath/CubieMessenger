.class public Lcom/liquable/nemo/regist/InputPhoneNumberActivity;
.super Lcom/liquable/nemo/regist/AbstractRegistActivity;
.source "InputPhoneNumberActivity.java"


# static fields
.field private static final ANIMATION_DRAWABLES:[I

.field private static final CODE_INTRO:I = 0x3

.field public static final CODE_SELECTED_REGION:I = 0x1

.field public static final CODE_VERIFY_PINCODE:I = 0x2


# instance fields
.field private applyPincodeBtn:Landroid/widget/Button;

.field private countryCodeEditText:Landroid/widget/EditText;

.field private countryCodeIso3166:Ljava/lang/String;

.field private fadeIn:Landroid/view/animation/Animation;

.field private fadeOut:Landroid/view/animation/Animation;

.field private hasEnteredApplyPincode:Z

.field private imageview1:Landroid/widget/ImageView;

.field private indexOfCurrentAnimation:I

.field private inputPhoneNumberBackgroundLayout:Landroid/widget/RelativeLayout;

.field private internationalCallingCode:Ljava/lang/String;

.field private nicknameEditText:Landroid/widget/EditText;

.field private phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->ANIMATION_DRAWABLES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020135
        0x7f020136
        0x7f020137
        0x7f020138
        0x7f020139
        0x7f02013a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->indexOfCurrentAnimation:I

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeIso3166:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->hasEnteredApplyPincode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->internationalCallingCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->startInputPincodeActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->imageview1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->applyPincode()V

    return-void
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->ANIMATION_DRAWABLES:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->nextIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->inputPhoneNumberBackgroundLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private applyPincode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    invoke-virtual {v2}, Lcom/liquable/nemo/regist/PhoneEditText;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeIso3166:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    :cond_0
    const v2, 0x7f0d0548

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->nicknameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "nickname":Ljava/lang/String;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual {v2, p0, v1}, Lcom/liquable/nemo/regist/RegistrationDaemon;->validateName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    invoke-virtual {v2}, Lcom/liquable/nemo/regist/PhoneEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "inputPhoneNumber":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->hasEnteredApplyPincode:Z

    if-nez v2, :cond_1

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->hasEnteredApplyPincode:Z

    .line 98
    new-instance v2, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;

    invoke-direct {v2, p0, p0, v0, v1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Void;

    .line 167
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadDefaultRegion()V
    .locals 5

    .prologue
    .line 176
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 177
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getInstance()Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    move-result-object v3

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 183
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "countryName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "countryCode"

    .line 184
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 183
    invoke-direct {p0, v3, v4}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->updateCountryNameAndCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private nextIndex()I
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->indexOfCurrentAnimation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->indexOfCurrentAnimation:I

    .line 189
    iget v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->indexOfCurrentAnimation:I

    sget-object v1, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->ANIMATION_DRAWABLES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->indexOfCurrentAnimation:I

    .line 192
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->indexOfCurrentAnimation:I

    return v0
.end method

.method private startInputPincodeActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rawPhoneNumber"    # Ljava/lang/String;
    .param p2, "internationalCallingCode"    # Ljava/lang/String;
    .param p3, "nickname"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setAndroidAccountCreated(Z)V

    .line 402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/regist/InputPincodeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 405
    const-string/jumbo v1, "PARAM_PHONE_NUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string/jumbo v1, "PARAM_COUNTRY_CODE_ISO3166"

    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeIso3166:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string/jumbo v1, "PARAM_INTERNATIONAL_CALLING_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string/jumbo v1, "PARAM_NICKNAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 410
    return-void
.end method

.method private updateCountryNameAndCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "countryName"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-static {}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getInstance()Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    move-result-object v0

    .line 414
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getCountryCodeIso3166ByCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeIso3166:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeIso3166:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeIso3166:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setCountryCodeIso3166(Ljava/lang/String;)V

    .line 418
    :cond_0
    iput-object p2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->internationalCallingCode:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeEditText:Landroid/widget/EditText;

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

    .line 420
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 200
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 201
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$2;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    const-wide/16 v5, 0x5dc

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    iget-object v3, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->imageview1:Landroid/widget/ImageView;

    const v4, 0x7f020135

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v3, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->inputPhoneNumberBackgroundLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f020136

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 217
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    const-string/jumbo v3, "countryName"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "countryCode"

    .line 220
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-direct {p0, v3, v4}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->updateCountryNameAndCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-static {p3}, Lcom/liquable/nemo/regist/InputPincodeActivity;->getProfileDtoFromResult(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v2

    .line 224
    .local v2, "profileDto":Lcom/liquable/nemo/model/account/ProfileDto;
    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/ProfileDto;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    :try_start_0
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "nickname is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/regist/RegistrationDaemon;->finishRegistraiton(Lcom/liquable/nemo/model/account/ProfileDto;)Z

    move-result v1

    .line 232
    .local v1, "finishRegistraiton":Z
    if-eqz v1, :cond_4

    .line 233
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/regist/RegistrationDaemon;->isFirstLogin(Lcom/liquable/nemo/model/account/ProfileDto;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/liquable/nemo/regist/ImportContactsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->startActivity(Landroid/content/Intent;)V

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->finish()V

    goto :goto_0

    .line 236
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 240
    :cond_4
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d037f

    .line 241
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d01c5

    .line 242
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0069

    new-instance v5, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$3;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$3;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    .line 243
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 254
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/liquable/nemo/regist/AbstractRegistActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->setIntent(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method protected onNotLoggedInCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v5, 0x1f4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 268
    const v2, 0x7f030033

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->setContentView(I)V

    .line 270
    const v2, 0x7f0800ca

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->imageview1:Landroid/widget/ImageView;

    .line 271
    const v2, 0x7f0800cb

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 272
    .local v0, "privacyDescImageView":Landroid/widget/ImageView;
    new-instance v2, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$4;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeIn:Landroid/view/animation/Animation;

    .line 284
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeOut:Landroid/view/animation/Animation;

    .line 285
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 286
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    const v2, 0x7f0800ce

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeEditText:Landroid/widget/EditText;

    .line 290
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->countryCodeEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$5;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$5;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v2, 0x7f080099

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/regist/PhoneEditText;

    iput-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    .line 301
    const v2, 0x7f0800cd

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->nicknameEditText:Landroid/widget/EditText;

    .line 302
    const v2, 0x7f0800d1

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->applyPincodeBtn:Landroid/widget/Button;

    .line 303
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->applyPincodeBtn:Landroid/widget/Button;

    new-instance v3, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$6;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$6;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    new-instance v3, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$7;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$7;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/regist/PhoneEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 319
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->phoneNumberEditText:Lcom/liquable/nemo/regist/PhoneEditText;

    invoke-virtual {v2}, Lcom/liquable/nemo/regist/PhoneEditText;->requestFocus()Z

    .line 320
    invoke-direct {p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->loadDefaultRegion()V

    .line 322
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->nicknameEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/liquable/nemo/authenticator/AccountUtil;->getDefaultNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->nicknameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Pref;->setNeedToInputName(Z)V

    .line 326
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->nicknameEditText:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 331
    :goto_0
    const v2, 0x7f0800c9

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->inputPhoneNumberBackgroundLayout:Landroid/widget/RelativeLayout;

    .line 333
    const v2, 0x7f0800d0

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 334
    .local v1, "skipPhoneRegistrationBtn":Landroid/widget/Button;
    new-instance v2, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$8;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$8;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeIn:Landroid/view/animation/Animation;

    new-instance v3, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 366
    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeOut:Landroid/view/animation/Animation;

    new-instance v3, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 389
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Pref;->setPasscode(Ljava/lang/String;)V

    .line 391
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/liquable/nemo/IntroActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 392
    return-void

    .line 328
    .end local v1    # "skipPhoneRegistrationBtn":Landroid/widget/Button;
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Pref;->setNeedToInputName(Z)V

    goto :goto_0
.end method

.method protected onNotLoggedResume()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method
