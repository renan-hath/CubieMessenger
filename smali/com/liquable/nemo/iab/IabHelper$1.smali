.class Lcom/liquable/nemo/iab/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/iab/IabHelper;->startSetup(Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/iab/IabHelper;

.field final synthetic val$listener:Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/iab/IabHelper;Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/iab/IabHelper;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    iput-object p2, p0, Lcom/liquable/nemo/iab/IabHelper$1;->val$listener:Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 315
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    iget-boolean v3, v3, Lcom/liquable/nemo/iab/IabHelper;->mDisposed:Z

    if-eqz v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    const-string/jumbo v4, "Billing service connected."

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    iput-object v4, v3, Lcom/liquable/nemo/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 320
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    iget-object v3, v3, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    const-string/jumbo v4, "Checking for in-app billing 3 support."

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    iget-object v3, v3, Lcom/liquable/nemo/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string/jumbo v5, "inapp"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 326
    .local v2, "response":I
    if-eqz v2, :cond_4

    .line 327
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->val$listener:Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->val$listener:Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/liquable/nemo/iab/IabResult;

    const-string/jumbo v5, "Error checking for billing v3 support."

    invoke-direct {v4, v2, v5}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/liquable/nemo/iab/IabResult;)V

    .line 333
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/liquable/nemo/iab/IabHelper;->mSubscriptionsSupported:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .end local v2    # "response":I
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->val$listener:Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_3

    .line 350
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->val$listener:Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/liquable/nemo/iab/IabResult;

    const/16 v5, -0x3e9

    const-string/jumbo v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/liquable/nemo/iab/IabResult;)V

    .line 353
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 336
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "response":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In-app billing version 3 supported for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    iget-object v3, v3, Lcom/liquable/nemo/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string/jumbo v5, "subs"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 340
    if-nez v2, :cond_5

    .line 341
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    const-string/jumbo v4, "Subscriptions AVAILABLE."

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/liquable/nemo/iab/IabHelper;->mSubscriptionsSupported:Z

    .line 347
    :goto_1
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/liquable/nemo/iab/IabHelper;->mSetupDone:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->val$listener:Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_0

    .line 358
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->val$listener:Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/liquable/nemo/iab/IabResult;

    const-string/jumbo v5, "Setup successful."

    invoke-direct {v4, v6, v5}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/liquable/nemo/iab/IabResult;)V

    goto/16 :goto_0

    .line 344
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    const-string/jumbo v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/liquable/nemo/iab/IabHelper$1;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/liquable/nemo/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 311
    return-void
.end method
