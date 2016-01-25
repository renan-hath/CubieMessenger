.class public Lcom/liquable/nemo/CoverActivity;
.super Landroid/app/Activity;
.source "CoverActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private copyRingtones()V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0}, Lcom/liquable/nemo/util/Sounds;->copyRingtones(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private installShortcut()V
    .locals 4

    .prologue
    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 42
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/liquable/nemo/CoverActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v1, "shortcutIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v0, "installer":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    const-string/jumbo v2, "android.intent.extra.shortcut.NAME"

    const-string/jumbo v3, "Cubie"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string/jumbo v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f020422

    .line 39
    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    const-string/jumbo v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/CoverActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isEnterDeleteAccount()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d037f

    .line 50
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d037e

    .line 51
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0069

    new-instance v4, Lcom/liquable/nemo/CoverActivity$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/CoverActivity$1;-><init>(Lcom/liquable/nemo/CoverActivity;)V

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 112
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isAutomaticallyInstalledShortcut()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/liquable/nemo/CoverActivity;->installShortcut()V

    .line 69
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Pref;->setAutomaticallyInstalledShortcut(Z)V

    .line 72
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createInActivity(Landroid/app/Activity;)V

    .line 74
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isImageFilesWrittenToFileSystem()Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    new-instance v2, Lcom/liquable/nemo/CoverActivity$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/CoverActivity$2;-><init>(Lcom/liquable/nemo/CoverActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 88
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/CoverActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/liquable/nemo/CoverActivity;->copyRingtones()V

    .line 93
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isAccountExists()Z

    move-result v0

    .line 95
    .local v0, "accountExists":Z
    if-eqz v0, :cond_3

    .line 96
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/CoverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/liquable/nemo/android/service/RegistrationAndroidService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/CoverActivity;->stopService(Landroid/content/Intent;)Z

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/CoverActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/liquable/nemo/CoverActivity;->finish()V

    goto :goto_0

    .line 100
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/liquable/nemo/android/service/RegistrationAndroidService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/CoverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/CoverActivity;->stopService(Landroid/content/Intent;)Z

    .line 104
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->beginRegistration()V

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->destroyInActivity(Landroid/app/Activity;)V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    invoke-static {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->deactivateApp(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->resumeSessionInActivity(Landroid/app/Activity;)V

    .line 130
    invoke-static {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->activateApp(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Lcom/liquable/nemo/CoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, "target":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->refererFromFacebookUrl(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "o":Ljava/lang/Object;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->retainNonConfigurationInstanceInActivity()V

    .line 151
    return-object v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->startSessionInActivity(Landroid/app/Activity;)V

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 158
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->endSessionInActivity(Landroid/app/Activity;)V

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 164
    return-void
.end method
