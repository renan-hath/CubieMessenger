.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerRecoverGooglePlayStickers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 510
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 511
    const-string/jumbo v0, "Recover google play stickers"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;->lambda$run$42(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$run$42(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total recovered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", you have to manually download them again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 516
    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;-><init>(Landroid/content/Context;)V

    .line 517
    .local v0, "billing":Lcom/liquable/nemo/sticker/StickerInAppBilling;
    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->tryRecoverAllPurchaseFromGoogleInventory()Lcom/liquable/future/IFuture;

    move-result-object v1

    invoke-static {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;)Lcom/liquable/future/Consumer;

    move-result-object v2

    .line 518
    invoke-interface {v1, v2}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers$$Lambda$2;->lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;)Ljava/lang/Runnable;

    move-result-object v2

    .line 520
    invoke-interface {v1, v2}, Lcom/liquable/future/IFuture;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    .line 521
    return-void
.end method
