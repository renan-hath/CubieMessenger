.class public Lcom/liquable/nemo/BaseActivityHelper;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final CANCELABLE_WAITING_KEY:I = 0x6

.field protected static final SYNCING_KEY:I = 0x5

.field public static final WAITING_KEY:I = 0x4

.field public static isCubieActivityInForeground:Z


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final errorReceiver:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

.field private futureSession:Lcom/liquable/future/FutureSession;

.field private isReceiverRegistered:Z

.field private final lifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/ILifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private passcodeMgr:Lcom/liquable/nemo/setting/PasscodeLockManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->isReceiverRegistered:Z

    .line 115
    new-instance v0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;-><init>(Lcom/liquable/nemo/BaseActivityHelper;Lcom/liquable/nemo/BaseActivityHelper$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->errorReceiver:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->lifecycleListeners:Ljava/util/List;

    .line 120
    iput-object p1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/BaseActivityHelper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private finishIfNoAccount()Z
    .locals 3

    .prologue
    .line 124
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isAccountExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    const-class v2, Lcom/liquable/nemo/CoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 128
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 129
    const/4 v1, 0x1

    .line 131
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registReceivers()V
    .locals 3

    .prologue
    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->isReceiverRegistered:Z

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.NEMO_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/liquable/nemo/BaseActivityHelper;->errorReceiver:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    return-void
.end method

.method private unregistReceivers()V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->errorReceiver:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/future/IFuture",
            "<TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->futureSession:Lcom/liquable/future/FutureSession;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/liquable/future/FutureSession;

    invoke-direct {v0}, Lcom/liquable/future/FutureSession;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->futureSession:Lcom/liquable/future/FutureSession;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->futureSession:Lcom/liquable/future/FutureSession;

    invoke-virtual {v0, p1}, Lcom/liquable/future/FutureSession;->add(Lcom/liquable/future/IFuture;)V

    .line 139
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->passcodeMgr:Lcom/liquable/nemo/setting/PasscodeLockManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeOnActivityResult()V

    .line 144
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createInActivity(Landroid/app/Activity;)V

    .line 150
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 151
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->setUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivityHelper;->finishIfNoAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivityHelper;->registReceivers()V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const v3, 0x7f0d0539

    const/4 v2, 0x0

    .line 160
    packed-switch p1, :pswitch_data_0

    .line 168
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->createProgressDialog(Landroid/content/Context;ZI)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    const v1, 0x7f0d04cf

    invoke-static {v0, v2, v1}, Lcom/liquable/nemo/util/NemoUIs;->createProgressDialog(Landroid/content/Context;ZI)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/liquable/nemo/util/NemoUIs;->createProgressDialog(Landroid/content/Context;ZI)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateFinished()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/liquable/nemo/setting/PasscodeLockManager;

    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/setting/PasscodeLockManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->passcodeMgr:Lcom/liquable/nemo/setting/PasscodeLockManager;

    .line 173
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->destroyInActivity(Landroid/app/Activity;)V

    .line 177
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/ILifecycleListener;

    .line 178
    .local v0, "lifecycleListener":Lcom/liquable/nemo/ILifecycleListener;
    invoke-interface {v0}, Lcom/liquable/nemo/ILifecycleListener;->onDestroy()V

    goto :goto_0

    .line 180
    .end local v0    # "lifecycleListener":Lcom/liquable/nemo/ILifecycleListener;
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivityHelper;->unregistReceivers()V

    .line 183
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->futureSession:Lcom/liquable/future/FutureSession;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->futureSession:Lcom/liquable/future/FutureSession;

    invoke-virtual {v1}, Lcom/liquable/future/FutureSession;->purge()V

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->futureSession:Lcom/liquable/future/FutureSession;

    .line 187
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 190
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 193
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/ILifecycleListener;

    .line 200
    .local v0, "lifecycleListener":Lcom/liquable/nemo/ILifecycleListener;
    invoke-interface {v0}, Lcom/liquable/nemo/ILifecycleListener;->onPause()V

    goto :goto_0

    .line 202
    .end local v0    # "lifecycleListener":Lcom/liquable/nemo/ILifecycleListener;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->passcodeMgr:Lcom/liquable/nemo/setting/PasscodeLockManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeOnPause()V

    .line 204
    const/4 v1, 0x0

    sput-boolean v1, Lcom/liquable/nemo/BaseActivityHelper;->isCubieActivityInForeground:Z

    .line 205
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->show(Landroid/content/Context;)V

    .line 206
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/liquable/nemo/facebook/FacebookSession;->deactivateApp(Landroid/content/Context;)V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 210
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isEnterDeleteAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d037f

    .line 212
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d037e

    .line 213
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0069

    new-instance v3, Lcom/liquable/nemo/BaseActivityHelper$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/BaseActivityHelper$1;-><init>(Lcom/liquable/nemo/BaseActivityHelper;)V

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 245
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->resumeSessionInActivity(Landroid/app/Activity;)V

    .line 229
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/liquable/nemo/facebook/FacebookSession;->activateApp(Landroid/content/Context;)V

    .line 236
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/liquable/nemo/android/service/ActiveIntentService;->startSubmitActivationIfRequired(Landroid/content/Context;)V

    .line 238
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/ILifecycleListener;

    .line 239
    .local v0, "lifecycleListener":Lcom/liquable/nemo/ILifecycleListener;
    invoke-interface {v0}, Lcom/liquable/nemo/ILifecycleListener;->onResume()V

    goto :goto_1

    .line 241
    .end local v0    # "lifecycleListener":Lcom/liquable/nemo/ILifecycleListener;
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->passcodeMgr:Lcom/liquable/nemo/setting/PasscodeLockManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/setting/PasscodeLockManager;->checkPasscode()V

    .line 243
    const/4 v1, 0x1

    sput-boolean v1, Lcom/liquable/nemo/BaseActivityHelper;->isCubieActivityInForeground:Z

    .line 244
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->hide(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()V
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->retainNonConfigurationInstanceInActivity()V

    .line 252
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->startSessionInActivity(Landroid/app/Activity;)V

    .line 256
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->passcodeMgr:Lcom/liquable/nemo/setting/PasscodeLockManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeOnStart()V

    .line 257
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->endSessionInActivity(Landroid/app/Activity;)V

    .line 261
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->passcodeMgr:Lcom/liquable/nemo/setting/PasscodeLockManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeOnStop()V

    .line 262
    return-void
.end method

.method public registerManagedLifecycleListener(Lcom/liquable/nemo/ILifecycleListener;)V
    .locals 1
    .param p1, "lifecycleListener"    # Lcom/liquable/nemo/ILifecycleListener;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivityHelper;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method
