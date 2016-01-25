.class public Lcom/liquable/nemo/sticker/PaidStickerItemActivity;
.super Lcom/liquable/nemo/sticker/BaseStickerItemActivity;
.source "PaidStickerItemActivity.java"


# instance fields
.field private mStartIntentSender:Ljava/lang/reflect/Method;

.field private stickerInAppBilling:Lcom/liquable/nemo/sticker/StickerInAppBilling;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity;-><init>()V

    return-void
.end method

.method private initCompatibilityLayer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "startIntentSender"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/IntentSender;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->mStartIntentSender:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/SecurityException;
    iput-object v6, p0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iput-object v6, p0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method checkInAppBillingSupport()Lcom/liquable/future/IFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->stickerInAppBilling:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->checkInAppBillingSupport()Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    const-class v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    return-object v0
.end method

.method launchPurchaseFlow(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/IFuture;
    .locals 1
    .param p1, "item"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->stickerInAppBilling:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-virtual {v0, p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->launchPurchaseFlow(Landroid/app/Activity;Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->stickerInAppBilling:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->destroy()V

    .line 56
    invoke-super {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity;->onDestroy()V

    .line 57
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 37
    sget-object v0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoggedInActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->stickerInAppBilling:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->handleActivityResult(IILandroid/content/Intent;)V

    .line 44
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity;->onLoggedInCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->initCompatibilityLayer()V

    .line 50
    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->stickerInAppBilling:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    .line 51
    return-void
.end method

.method public tryRecoverPurchase(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 1
    .param p1, "itemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->stickerInAppBilling:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->tryRecoverPurchasedStickerItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    .line 69
    return-void
.end method
