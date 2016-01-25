.class public Lcom/liquable/nemo/setting/DiagnosisActivity;
.super Lcom/liquable/nemo/setting/BaseSettingActivity;
.source "DiagnosisActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/setting/DiagnosisActivity$Report;,
        Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
    }
.end annotation


# static fields
.field private static final DIAGNOSIS_WAITING_KEY:I

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final endPointDiagnosis:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    const-class v0, Lcom/liquable/nemo/setting/DiagnosisActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/setting/DiagnosisActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;-><init>()V

    .line 270
    new-instance v0, Lcom/liquable/nemo/setting/DiagnosisActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$1;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 277
    new-instance v0, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity;->endPointDiagnosis:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/liquable/nemo/setting/DiagnosisActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/setting/DiagnosisActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->analyze()V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/setting/DiagnosisActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/setting/DiagnosisActivity;)Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity;->endPointDiagnosis:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/setting/DiagnosisActivity;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/DiagnosisActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/setting/DiagnosisActivity;->mailReport(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private analyze()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/liquable/nemo/setting/DiagnosisActivity$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$2;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 347
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/DiagnosisActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    return-void
.end method

.method private isMobileConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 352
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 353
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 354
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 361
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/setting/DiagnosisActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 362
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 363
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 366
    :goto_0
    return v3

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private mailReport(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "logcat"    # Ljava/lang/String;
    .param p2, "s3Report"    # Ljava/lang/CharSequence;
    .param p3, "endPointReport"    # Ljava/lang/CharSequence;

    .prologue
    .line 372
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 374
    .local v0, "pref":Lcom/liquable/nemo/util/Pref;
    new-instance v1, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity;Lcom/liquable/nemo/setting/DiagnosisActivity$1;)V

    const-string/jumbo v2, "NemoVersion"

    sget-object v3, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "Phone Model"

    .line 375
    invoke-static {}, Lcom/liquable/nemo/regist/RegistrationDaemon;->createPhoneModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "Android Version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 376
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "Uid"

    .line 377
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "CubieId"

    .line 378
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "fbuid"

    .line 379
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getFbuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "twitterId"

    .line 380
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getTwitterId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "CountryCodeIso3166"

    .line 381
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getCountryCodeIso3166()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "Locale"

    .line 382
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "Wifi connected"

    .line 383
    invoke-direct {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->isWifiConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "Mobile connected"

    .line 384
    invoke-direct {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->isMobileConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "InstallId"

    .line 385
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getInstallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "AbTestGroup"

    .line 386
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getInstallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/analytics/AbTestGroup;->getInstance(Ljava/lang/String;)Lcom/liquable/nemo/analytics/AbTestGroup;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "Sticker Context"

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 388
    invoke-virtual {v3, p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v3

    .line 387
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "current s3 endpoint"

    .line 389
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getS3EndPoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "pick s3 endpoints"

    .line 390
    invoke-virtual {v1, v2, p2}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "End Point Diagnosis"

    .line 391
    invoke-virtual {v1, v2, p3}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    const-string/jumbo v2, "Log"

    .line 392
    invoke-virtual {v1, v2, p1}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->appendData(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/nemo/setting/DiagnosisActivity$Report;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Lcom/liquable/nemo/setting/DiagnosisActivity$Report;->mail()V

    .line 394
    return-void
.end method


# virtual methods
.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 398
    packed-switch p1, :pswitch_data_0

    .line 402
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 400
    :pswitch_0
    const/4 v0, 0x0

    const v1, 0x7f0d0539

    invoke-static {p0, v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->createProgressDialog(Landroid/content/Context;ZI)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity;->endPointDiagnosis:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->terminate()V

    .line 408
    invoke-super {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;->onDestroy()V

    .line 409
    return-void
.end method

.method protected onSettingCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d0191

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 414
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/DiagnosisActivity;->addPreferencesFromResource(I)V

    .line 416
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "analyze_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 417
    .local v0, "analyzePreference":Landroid/preference/Preference;
    new-instance v2, Lcom/liquable/nemo/setting/DiagnosisActivity$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/DiagnosisActivity$3;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 426
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "use_default_s3_endpoint_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 427
    .local v1, "useDefaultS3EndPointPreference":Landroid/preference/CheckBoxPreference;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isUseDefaultS3EndPoint()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 428
    new-instance v2, Lcom/liquable/nemo/setting/DiagnosisActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/liquable/nemo/setting/DiagnosisActivity$4;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 455
    return-void
.end method
