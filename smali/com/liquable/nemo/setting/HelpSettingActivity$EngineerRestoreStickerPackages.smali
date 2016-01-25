.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerRestoreStickerPackages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 380
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 381
    const-string/jumbo v0, "Restore sticker packages"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 379
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/sticker/model/StickerManager;->listCategoriesByOrder()Ljava/util/List;

    move-result-object v1

    .line 387
    .local v1, "categoryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    .local v0, "categoryCode":Ljava/lang/String;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v5, v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSendableStickerPackageCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 390
    .local v3, "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 393
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 394
    .local v2, "packageCode":Ljava/lang/String;
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v7, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 395
    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v8

    .line 394
    invoke-virtual {v6, v7, v8, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerPackageFromServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    goto :goto_0

    .line 399
    .end local v0    # "categoryCode":Ljava/lang/String;
    .end local v2    # "packageCode":Ljava/lang/String;
    .end local v3    # "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 379
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    const-string/jumbo v1, "Restore complete"

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    return-void
.end method
