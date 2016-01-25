.class public Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;
.super Landroid/content/Intent;
.source "ConnectPhonePincodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "countryCodeIso3166"    # Ljava/lang/String;
    .param p4, "internationalCallingCode"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string/jumbo v0, "phoneNumber"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v0, "countryCodeIso3166"

    invoke-virtual {p0, v0, p3}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v0, "internationalCallingCode"

    invoke-virtual {p0, v0, p4}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method static synthetic access$400(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->getCountryCodeIso3166(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$CreateIntent;->getInternationalCallingCode(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCountryCodeIso3166(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    const-string/jumbo v0, "countryCodeIso3166"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInternationalCallingCode(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string/jumbo v0, "internationalCallingCode"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string/jumbo v0, "phoneNumber"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
