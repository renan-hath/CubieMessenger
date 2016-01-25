.class Lcom/liquable/nemo/sticker/StickerShopFragment$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "StickerShopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/liquable/nemo/model/sticker/StickerShopDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showToast"    # Z

    .prologue
    .line 462
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private showFailPopup()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d006a

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0380

    .line 542
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d042e

    new-instance v2, Lcom/liquable/nemo/sticker/StickerShopFragment$3$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$3$2;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment$3;)V

    .line 543
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d042f

    new-instance v2, Lcom/liquable/nemo/sticker/StickerShopFragment$3$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$3$1;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment$3;)V

    .line 549
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 556
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/sticker/StickerShopDto;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 466
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 467
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    .line 466
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerShop(Landroid/content/Context;Ljava/lang/String;I)Lcom/liquable/nemo/model/sticker/StickerShopDto;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 462
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/sticker/StickerShopDto;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    const/4 v1, 0x1

    # setter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$702(Lcom/liquable/nemo/sticker/StickerShopFragment;Z)Z

    .line 474
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TabHost;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$800(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 476
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # setter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$702(Lcom/liquable/nemo/sticker/StickerShopFragment;Z)Z

    .line 481
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$800(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 483
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 0
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->showFailPopup()V

    .line 488
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/sticker/StickerShopDto;)V
    .locals 10
    .param p1, "result"    # Lcom/liquable/nemo/model/sticker/StickerShopDto;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 492
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    if-nez p1, :cond_2

    .line 496
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->showFailPopup()V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iput-object p1, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->shopDto:Lcom/liquable/nemo/model/sticker/StickerShopDto;

    .line 502
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 503
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->shopDto:Lcom/liquable/nemo/model/sticker/StickerShopDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerShopDto;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 504
    .local v1, "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    const-string/jumbo v3, ""

    .line 505
    .local v3, "tabs":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getTabCodes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, "itemTabCode":Ljava/lang/String;
    iget-object v8, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment;->addItem(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    invoke-static {v8, v0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1000(Lcom/liquable/nemo/sticker/StickerShopFragment;Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    .line 507
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    goto :goto_2

    .line 509
    .end local v0    # "itemTabCode":Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/liquable/nemo/sticker/StickerShopFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getStickerShop:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 513
    .end local v1    # "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .end local v3    # "tabs":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHasMoreItems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 514
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 515
    .local v2, "tabCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v8, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHasMoreItems:Ljava/util/Map;

    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    move v4, v5

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v8, Lcom/liquable/nemo/sticker/StickerShopFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tabHasMoreItems("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "):"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    move v4, v5

    :goto_5
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v4, v6

    .line 515
    goto :goto_4

    :cond_6
    move v4, v6

    .line 516
    goto :goto_5

    .line 521
    .end local v2    # "tabCode":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v5, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;
    invoke-static {v5}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TabHost;

    move-result-object v5

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment;->initTabs(Landroid/widget/TabHost;)V
    invoke-static {v4, v5}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1100(Lcom/liquable/nemo/sticker/StickerShopFragment;Landroid/widget/TabHost;)V

    .line 524
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->shopDto:Lcom/liquable/nemo/model/sticker/StickerShopDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerShopDto;->getUpgradeNotice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 525
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->upgradeNoticeLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1200(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :goto_6
    sget-object v4, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v4}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v4

    if-nez v4, :cond_0

    .line 532
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-virtual {v6}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0d04c4

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (rev:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v6, v6, Lcom/liquable/nemo/sticker/StickerShopFragment;->shopDto:Lcom/liquable/nemo/model/sticker/StickerShopDto;

    .line 534
    invoke-virtual {v6}, Lcom/liquable/nemo/model/sticker/StickerShopDto;->getRevision()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/sticker/StickerShopFragment;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    :cond_8
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->upgradeNoticeText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1300(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v5, v5, Lcom/liquable/nemo/sticker/StickerShopFragment;->shopDto:Lcom/liquable/nemo/model/sticker/StickerShopDto;

    invoke-virtual {v5}, Lcom/liquable/nemo/model/sticker/StickerShopDto;->getUpgradeNotice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->upgradeNoticeLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1200(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 462
    check-cast p1, Lcom/liquable/nemo/model/sticker/StickerShopDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment$3;->postExecuteSuccess(Lcom/liquable/nemo/model/sticker/StickerShopDto;)V

    return-void
.end method
