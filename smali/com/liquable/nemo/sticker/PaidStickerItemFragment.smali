.class public Lcom/liquable/nemo/sticker/PaidStickerItemFragment;
.super Lcom/liquable/nemo/sticker/BaseStickerItemFragment;
.source "PaidStickerItemFragment.java"


# instance fields
.field private limitedTimeOfferStickerRpc:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private recoveryStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->recoveryStarted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedTimeOfferStickerRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/PaidStickerItemFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedTimeOfferStickerRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->lambda$init$63(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/sticker/PaidStickerItemActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->lambda$null$62(Lcom/liquable/nemo/sticker/PaidStickerItemActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$init$63(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;

    .line 53
    .local v0, "paidStickerItemActivity":Lcom/liquable/nemo/sticker/PaidStickerItemActivity;
    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->checkInAppBillingSupport()Lcom/liquable/future/IFuture;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;->lambdaFactory$(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/sticker/PaidStickerItemActivity;)Lcom/liquable/future/Consumer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    .line 66
    return-void
.end method

.method private synthetic lambda$null$62(Lcom/liquable/nemo/sticker/PaidStickerItemActivity;Ljava/lang/Boolean;)V
    .locals 4
    .param p2, "support"    # Ljava/lang/Boolean;

    .prologue
    .line 54
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 56
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "buy"

    const-string/jumbo v3, "google_play"

    invoke-interface {v0, v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnStickerItemButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->launchPurchaseFlow(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/IFuture;

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0401

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0400

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;-><init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getIntentFilterActions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.liquable.nemo.sticker.StickerEvent"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected init(Lcom/liquable/nemo/model/sticker/StickerItemDto;Ljava/lang/String;)V
    .locals 2
    .param p1, "optItem"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .param p2, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->loadItem(Ljava/lang/String;)V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->buyButton:Landroid/widget/Button;

    invoke-static {p0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedFreeButton:Landroid/widget/Button;

    new-instance v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;-><init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->loadItem(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->onAttach(Landroid/app/Activity;)V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedTimeOfferStickerRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedTimeOfferStickerRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 134
    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedTimeOfferStickerRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 135
    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedTimeOfferStickerRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->onDestroy()V

    .line 139
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->onDetach()V

    .line 144
    return-void
.end method

.method public purchaseRpcStarted()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->buyButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    return-void
.end method

.method protected resetItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 2
    .param p1, "itemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->resetItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    .line 155
    iget-boolean v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->recoveryStarted:Z

    if-eqz v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->recoveryStarted:Z

    .line 159
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;

    .line 160
    .local v0, "paidStickerItemActivity":Lcom/liquable/nemo/sticker/PaidStickerItemActivity;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/sticker/PaidStickerItemActivity;->tryRecoverPurchase(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    goto :goto_0
.end method

.method protected updatePurchaseStateAndButtons()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 165
    sget-object v0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePurchaseStateAndButtons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanBuy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 171
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isOwned()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 172
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->isStickerPackageDownloading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->buyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanLimitedTimeOffer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 180
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isOwned()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 181
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->isStickerPackageDownloading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedFreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    :goto_2
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->purchasedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanBuy()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->purchasedTextView:Landroid/widget/TextView;

    const v1, 0x7f0d04c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->purchasedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020460

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->buyButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedFreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->purchasedTextView:Landroid/widget/TextView;

    const v1, 0x7f0d04bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanLimitedTimeOffer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->purchasedTextView:Landroid/widget/TextView;

    const v1, 0x7f0d04be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->purchasedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
