.class public abstract Lcom/liquable/nemo/regist/AbstractRegistActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "AbstractRegistActivity.java"


# static fields
.field protected static final WAITING_KEY:I = 0x0

.field protected static final WAITING_RESTORE_DATA_KEY:I = 0x1


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/liquable/nemo/regist/AbstractRegistActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.regist.FINISH_SIGN_UP_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/liquable/nemo/regist/AbstractRegistActivity$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity$1;-><init>(Lcom/liquable/nemo/regist/AbstractRegistActivity;)V

    iput-object v1, p0, Lcom/liquable/nemo/regist/AbstractRegistActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 111
    iget-object v1, p0, Lcom/liquable/nemo/regist/AbstractRegistActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/regist/AbstractRegistActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/regist/AbstractRegistActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/regist/AbstractRegistActivity;->receiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createInActivity(Landroid/app/Activity;)V

    .line 32
    invoke-direct {p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;->registerBroadcastReceiver()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/AbstractRegistActivity;->onNotLoggedInCreate(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    packed-switch p1, :pswitch_data_0

    .line 44
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const v0, 0x7f0d0539

    invoke-static {p0, v1, v0}, Lcom/liquable/nemo/util/NemoUIs;->createProgressDialog(Landroid/content/Context;ZI)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_1
    const v0, 0x7f0d044e

    invoke-static {p0, v1, v0}, Lcom/liquable/nemo/util/NemoUIs;->createProgressDialog(Landroid/content/Context;ZI)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->destroyInActivity(Landroid/app/Activity;)V

    .line 50
    invoke-direct {p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;->unregisterBroadcastReceiver()V

    .line 51
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onDestroy()V

    .line 52
    return-void
.end method

.method protected abstract onNotLoggedInCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract onNotLoggedResume()V
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    .line 61
    invoke-static {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->deactivateApp(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method protected final onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    .line 67
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->resumeSessionInActivity(Landroid/app/Activity;)V

    .line 68
    invoke-static {p0}, Lcom/liquable/nemo/facebook/FacebookSession;->activateApp(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;->onNotLoggedResume()V

    .line 70
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "o":Ljava/lang/Object;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->retainNonConfigurationInstanceInActivity()V

    .line 84
    return-object v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->startSessionInActivity(Landroid/app/Activity;)V

    .line 90
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onStart()V

    .line 91
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->endSessionInActivity(Landroid/app/Activity;)V

    .line 96
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onStop()V

    .line 97
    return-void
.end method
