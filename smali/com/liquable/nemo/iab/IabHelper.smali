.class public Lcom/liquable/nemo/iab/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/liquable/nemo/iab/IabHelper$OnConsumeFinishedListener;,
        Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;,
        Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-boolean v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mDebugLog:Z

    .line 227
    const-string/jumbo v0, "IabHelper"

    iput-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 229
    iput-boolean v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mSetupDone:Z

    .line 231
    iput-boolean v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mDisposed:Z

    .line 233
    iput-boolean v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mSubscriptionsSupported:Z

    .line 236
    iput-boolean v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mAsyncInProgress:Z

    .line 239
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/liquable/nemo/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 272
    const-string/jumbo v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 196
    const-string/jumbo v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string/jumbo v4, "/"

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string/jumbo v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string/jumbo v4, "/"

    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 212
    rsub-int v2, p0, -0x3e8

    .line 213
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 214
    aget-object v3, v1, v2

    .line 221
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 216
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 218
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 219
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 221
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_0
    return-void
.end method

.method consume(Lcom/liquable/nemo/iab/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/liquable/nemo/iab/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/iab/IabException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 797
    const-string/jumbo v4, "consume"

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 799
    iget-object v4, p1, Lcom/liquable/nemo/iab/Purchase;->mItemType:Ljava/lang/String;

    const-string/jumbo v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 800
    new-instance v4, Lcom/liquable/nemo/iab/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/liquable/nemo/iab/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 805
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/liquable/nemo/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/liquable/nemo/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 808
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 809
    new-instance v4, Lcom/liquable/nemo/iab/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/liquable/nemo/iab/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 813
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 814
    iget-object v4, p0, Lcom/liquable/nemo/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 815
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 826
    return-void

    .line 818
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/liquable/nemo/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 819
    new-instance v4, Lcom/liquable/nemo/iab/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/liquable/nemo/iab/Purchase;Lcom/liquable/nemo/iab/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/liquable/nemo/iab/Purchase;
    .param p2, "listener"    # Lcom/liquable/nemo/iab/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 840
    const-string/jumbo v1, "consume"

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/iab/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/liquable/nemo/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/liquable/nemo/iab/IabHelper$OnConsumeFinishedListener;Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 844
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/iab/Purchase;",
            ">;",
            "Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 855
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/iab/Purchase;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 856
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 857
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/liquable/nemo/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/liquable/nemo/iab/IabHelper$OnConsumeFinishedListener;Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 858
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/liquable/nemo/iab/IabHelper$OnConsumeFinishedListener;Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/liquable/nemo/iab/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/iab/Purchase;",
            ">;",
            "Lcom/liquable/nemo/iab/IabHelper$OnConsumeFinishedListener;",
            "Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1031
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/iab/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1032
    .local v4, "handler":Landroid/os/Handler;
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 1033
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/liquable/nemo/iab/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/iab/IabHelper$3;-><init>(Lcom/liquable/nemo/iab/IabHelper;Ljava/util/List;Lcom/liquable/nemo/iab/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/liquable/nemo/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1062
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1063
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    const-string/jumbo v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mSetupDone:Z

    .line 387
    iget-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 388
    const-string/jumbo v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 393
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mDisposed:Z

    .line 394
    iput-object v2, p0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    .line 395
    iput-object v2, p0, Lcom/liquable/nemo/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 396
    iput-object v2, p0, Lcom/liquable/nemo/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 397
    iput-object v2, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    .line 398
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 286
    iput-boolean p1, p0, Lcom/liquable/nemo/iab/IabHelper;->mDebugLog:Z

    .line 287
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 280
    iput-boolean p1, p0, Lcom/liquable/nemo/iab/IabHelper;->mDebugLog:Z

    .line 281
    iput-object p2, p0, Lcom/liquable/nemo/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 282
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 917
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mAsyncInProgress:Z

    .line 919
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    .line 907
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mAsyncInProgress:Z

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 871
    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 872
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 873
    const-string/jumbo v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 874
    const/4 v1, 0x0

    .line 878
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 875
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 876
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 877
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 878
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 880
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 882
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 883
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 889
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 890
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 891
    const-string/jumbo v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 892
    const/4 v1, 0x0

    .line 896
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 893
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 894
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 895
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 896
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 898
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 900
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 901
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    const/16 v11, -0x3ea

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 559
    iget v8, p0, Lcom/liquable/nemo/iab/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    .line 656
    :goto_0
    return v6

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 564
    const-string/jumbo v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/liquable/nemo/iab/IabHelper;->flagEndAsync()V

    .line 569
    if-nez p3, :cond_2

    .line 570
    const-string/jumbo v6, "Null data in IAB activity result."

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 571
    new-instance v5, Lcom/liquable/nemo/iab/IabResult;

    const-string/jumbo v6, "Null data in IAB result"

    invoke-direct {v5, v11, v6}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 572
    .local v5, "result":Lcom/liquable/nemo/iab/IabResult;
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_1

    .line 573
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    :cond_1
    move v6, v7

    .line 575
    goto :goto_0

    .line 578
    .end local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/liquable/nemo/iab/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v4

    .line 579
    .local v4, "responseCode":I
    const-string/jumbo v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "purchaseData":Ljava/lang/String;
    const-string/jumbo v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "dataSignature":Ljava/lang/String;
    if-ne p2, v9, :cond_8

    if-nez v4, :cond_8

    .line 583
    const-string/jumbo v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 584
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 585
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 586
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 587
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Expected item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 589
    if-eqz v3, :cond_3

    if-nez v0, :cond_5

    .line 590
    :cond_3
    const-string/jumbo v6, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Extras: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 592
    new-instance v5, Lcom/liquable/nemo/iab/IabResult;

    const/16 v6, -0x3f0

    const-string/jumbo v8, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v5, v6, v8}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 594
    .restart local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_4

    .line 595
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    :cond_4
    move v6, v7

    .line 597
    goto/16 :goto_0

    .line 600
    .end local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 602
    .local v2, "purchase":Lcom/liquable/nemo/iab/Purchase;
    :try_start_0
    new-instance v2, Lcom/liquable/nemo/iab/Purchase;

    .end local v2    # "purchase":Lcom/liquable/nemo/iab/Purchase;
    iget-object v8, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v2, v8, v3, v0}, Lcom/liquable/nemo/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .restart local v2    # "purchase":Lcom/liquable/nemo/iab/Purchase;
    iget-object v8, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    .line 629
    iget-object v8, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/liquable/nemo/iab/IabResult;

    const-string/jumbo v10, "Success"

    invoke-direct {v9, v6, v10}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v2}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    .end local v2    # "purchase":Lcom/liquable/nemo/iab/Purchase;
    :cond_6
    :goto_1
    move v6, v7

    .line 656
    goto/16 :goto_0

    .line 618
    :catch_0
    move-exception v1

    .line 619
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "Failed to parse purchase data."

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 621
    new-instance v5, Lcom/liquable/nemo/iab/IabResult;

    const-string/jumbo v6, "Failed to parse purchase data."

    invoke-direct {v5, v11, v6}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 622
    .restart local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_7

    .line 623
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    :cond_7
    move v6, v7

    .line 625
    goto/16 :goto_0

    .line 632
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    :cond_8
    if-ne p2, v9, :cond_9

    .line 634
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/liquable/nemo/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 636
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    .line 637
    new-instance v5, Lcom/liquable/nemo/iab/IabResult;

    const-string/jumbo v6, "Problem purchashing item."

    invoke-direct {v5, v4, v6}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 638
    .restart local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    goto :goto_1

    .line 640
    .end local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    :cond_9
    if-nez p2, :cond_a

    .line 641
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Purchase canceled - Response: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/liquable/nemo/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 642
    new-instance v5, Lcom/liquable/nemo/iab/IabResult;

    const/16 v6, -0x3ed

    const-string/jumbo v8, "User canceled."

    invoke-direct {v5, v6, v8}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 643
    .restart local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    .line 644
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    goto :goto_1

    .line 647
    .end local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Purchase failed. Result code: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 648
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ". Response: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 650
    invoke-static {v4}, Lcom/liquable/nemo/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 647
    invoke-virtual {p0, v6}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 651
    new-instance v5, Lcom/liquable/nemo/iab/IabResult;

    const/16 v6, -0x3ee

    const-string/jumbo v8, "Unknown purchase response."

    invoke-direct {v5, v6, v8}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 652
    .restart local v5    # "result":Lcom/liquable/nemo/iab/IabResult;
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    .line 653
    iget-object v6, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    goto/16 :goto_1
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 418
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 426
    const-string/jumbo v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 476
    const-string/jumbo v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 480
    const-string/jumbo v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 481
    new-instance v11, Lcom/liquable/nemo/iab/IabResult;

    const/16 v1, -0x3f1

    const-string/jumbo v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 483
    .local v11, "r":Lcom/liquable/nemo/iab/IabResult;
    invoke-virtual {p0}, Lcom/liquable/nemo/iab/IabHelper;->flagEndAsync()V

    .line 484
    if-eqz p5, :cond_0

    .line 485
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    .line 539
    .end local v11    # "r":Lcom/liquable/nemo/iab/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    .line 493
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    .line 492
    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 497
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 498
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/liquable/nemo/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/liquable/nemo/iab/IabHelper;->flagEndAsync()V

    .line 501
    new-instance v13, Lcom/liquable/nemo/iab/IabResult;

    const-string/jumbo v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 502
    .local v13, "result":Lcom/liquable/nemo/iab/IabResult;
    if-eqz p5, :cond_0

    .line 503
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 519
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/liquable/nemo/iab/IabResult;
    :catch_0
    move-exception v9

    .line 520
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 522
    invoke-virtual {p0}, Lcom/liquable/nemo/iab/IabHelper;->flagEndAsync()V

    .line 524
    new-instance v13, Lcom/liquable/nemo/iab/IabResult;

    const/16 v1, -0x3ec

    const-string/jumbo v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 525
    .restart local v13    # "result":Lcom/liquable/nemo/iab/IabResult;
    if-eqz p5, :cond_0

    .line 526
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    goto/16 :goto_0

    .line 508
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/liquable/nemo/iab/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string/jumbo v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 509
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 510
    move/from16 v0, p4

    iput v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mRequestCode:I

    .line 511
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchaseListener:Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    .line 512
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 513
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 516
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    .line 517
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 513
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 528
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 529
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 531
    invoke-virtual {p0}, Lcom/liquable/nemo/iab/IabHelper;->flagEndAsync()V

    .line 533
    new-instance v13, Lcom/liquable/nemo/iab/IabResult;

    const/16 v1, -0x3e9

    const-string/jumbo v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 535
    .restart local v13    # "result":Lcom/liquable/nemo/iab/IabResult;
    if-eqz p5, :cond_0

    .line 536
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 433
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/iab/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string/jumbo v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1066
    iget-boolean v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/liquable/nemo/iab/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liquable/nemo/iab/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/iab/IabException;
        }
    .end annotation

    .prologue
    .line 661
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/liquable/nemo/iab/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/liquable/nemo/iab/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/liquable/nemo/iab/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liquable/nemo/iab/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/iab/IabException;
        }
    .end annotation

    .prologue
    .line 685
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 686
    const-string/jumbo v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 688
    :try_start_0
    new-instance v1, Lcom/liquable/nemo/iab/Inventory;

    invoke-direct {v1}, Lcom/liquable/nemo/iab/Inventory;-><init>()V

    .line 689
    .local v1, "inv":Lcom/liquable/nemo/iab/Inventory;
    const-string/jumbo v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/liquable/nemo/iab/IabHelper;->queryPurchases(Lcom/liquable/nemo/iab/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 690
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 691
    new-instance v3, Lcom/liquable/nemo/iab/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 718
    .end local v1    # "inv":Lcom/liquable/nemo/iab/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/liquable/nemo/iab/IabException;

    const/16 v4, -0x3e9

    const-string/jumbo v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 694
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/liquable/nemo/iab/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 695
    :try_start_1
    const-string/jumbo v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/liquable/nemo/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/liquable/nemo/iab/Inventory;Ljava/util/List;)I

    move-result v2

    .line 696
    if-eqz v2, :cond_1

    .line 697
    new-instance v3, Lcom/liquable/nemo/iab/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    .end local v1    # "inv":Lcom/liquable/nemo/iab/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 723
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/liquable/nemo/iab/IabException;

    const/16 v4, -0x3ea

    const-string/jumbo v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 702
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/liquable/nemo/iab/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/liquable/nemo/iab/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 703
    const-string/jumbo v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/liquable/nemo/iab/IabHelper;->queryPurchases(Lcom/liquable/nemo/iab/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 704
    if-eqz v2, :cond_2

    .line 705
    new-instance v3, Lcom/liquable/nemo/iab/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 708
    :cond_2
    if-eqz p1, :cond_3

    .line 709
    const-string/jumbo v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/liquable/nemo/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/liquable/nemo/iab/Inventory;Ljava/util/List;)I

    move-result v2

    .line 710
    if-eqz v2, :cond_3

    .line 711
    new-instance v3, Lcom/liquable/nemo/iab/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/liquable/nemo/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 717
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 776
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/liquable/nemo/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;)V

    .line 777
    return-void
.end method

.method public queryInventoryAsync(ZLcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 781
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/liquable/nemo/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;)V

    .line 782
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 745
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 746
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 747
    const-string/jumbo v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 748
    const-string/jumbo v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 749
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/liquable/nemo/iab/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/iab/IabHelper$2;-><init>(Lcom/liquable/nemo/iab/IabHelper;ZLjava/util/List;Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 772
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 773
    return-void
.end method

.method queryPurchases(Lcom/liquable/nemo/iab/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/liquable/nemo/iab/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 923
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Querying owned items, item type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 924
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 925
    const/4 v12, 0x0

    .line 926
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 929
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    .line 931
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 930
    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 935
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 936
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 937
    if-eqz v8, :cond_1

    .line 938
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/liquable/nemo/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 982
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 941
    .restart local v8    # "response":I
    :cond_1
    const-string/jumbo v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 942
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 944
    :cond_2
    const-string/jumbo v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 945
    const/16 v8, -0x3ea

    goto :goto_0

    .line 948
    :cond_3
    const-string/jumbo v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 949
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 951
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 953
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 954
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 955
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 956
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 960
    .local v11, "sku":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 961
    new-instance v5, Lcom/liquable/nemo/iab/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/liquable/nemo/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    .local v5, "purchase":Lcom/liquable/nemo/iab/Purchase;
    invoke-virtual {v5}, Lcom/liquable/nemo/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 964
    const-string/jumbo v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 965
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 969
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/iab/Inventory;->addPurchase(Lcom/liquable/nemo/iab/Purchase;)V

    .line 953
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 978
    .end local v5    # "purchase":Lcom/liquable/nemo/iab/Purchase;
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_5
    const-string/jumbo v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 979
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 980
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 982
    if-eqz v12, :cond_6

    const/16 v13, -0x3eb

    :goto_2
    move v8, v13

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x0

    goto :goto_2
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/liquable/nemo/iab/Inventory;Ljava/util/List;)I
    .locals 11
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/liquable/nemo/iab/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/iab/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 987
    const-string/jumbo v8, "Querying SKU details."

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 988
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/liquable/nemo/iab/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 990
    if-eqz p3, :cond_1

    .line 991
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 992
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 993
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 998
    .end local v4    # "sku":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 999
    const-string/jumbo v8, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1025
    :cond_2
    :goto_1
    return v2

    .line 1003
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1004
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string/jumbo v8, "ITEM_ID_LIST"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1005
    iget-object v8, p0, Lcom/liquable/nemo/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1007
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string/jumbo v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1008
    invoke-virtual {p0, v5}, Lcom/liquable/nemo/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 1009
    .local v2, "response":I
    if-eqz v2, :cond_4

    .line 1010
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getSkuDetails() failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/liquable/nemo/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 1013
    :cond_4
    const-string/jumbo v8, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 1014
    const/16 v2, -0x3ea

    goto :goto_1

    .line 1018
    .end local v2    # "response":I
    :cond_5
    const-string/jumbo v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1020
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1021
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/liquable/nemo/iab/SkuDetails;

    invoke-direct {v0, p1, v7}, Lcom/liquable/nemo/iab/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    .local v0, "d":Lcom/liquable/nemo/iab/SkuDetails;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Got sku details: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p2, v0}, Lcom/liquable/nemo/iab/Inventory;->addSkuDetails(Lcom/liquable/nemo/iab/SkuDetails;)V

    goto :goto_2
.end method

.method public startSetup(Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 300
    iget-boolean v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_0
    const-string/jumbo v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 306
    new-instance v1, Lcom/liquable/nemo/iab/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/iab/IabHelper$1;-><init>(Lcom/liquable/nemo/iab/IabHelper;Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/liquable/nemo/iab/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    if-eqz p1, :cond_1

    .line 372
    new-instance v1, Lcom/liquable/nemo/iab/IabResult;

    const/4 v2, 0x3

    const-string/jumbo v3, "Billing service unavailable on device."

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/liquable/nemo/iab/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/liquable/nemo/iab/IabHelper;->checkNotDisposed()V

    .line 411
    iget-boolean v0, p0, Lcom/liquable/nemo/iab/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
