.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerUseDevStickerConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 629
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 630
    const-string/jumbo v0, "\u6307\u5b9a\u6e2c\u8a66\u7248\u7684 sticker config"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-direct {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->revision()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->updateSummary(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->revision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private revision()Ljava/lang/String;
    .locals 2

    .prologue
    .line 636
    sget v0, Lcom/liquable/nemo/sticker/model/StickerManager;->devRevision:I

    if-nez v0, :cond_0

    .line 637
    const-string/jumbo v0, "Published version"

    .line 639
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Use dev revision:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/liquable/nemo/sticker/model/StickerManager;->devRevision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 644
    iget-object v3, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 645
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 646
    .local v1, "editView":Landroid/view/View;
    const v3, 0x7f0801ad

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 647
    .local v0, "editText":Landroid/widget/EditText;
    const-string/jumbo v3, "10"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v3, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-static {v3}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "Dev Revision:"

    .line 649
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "\u8f38\u5165 0 \u7684\u8a71\u5c31\u662f\u4f7f\u7528\u76ee\u524d\u767c\u4f48\u7684\u7248\u672c\uff0c\u8f38\u5165 10 \u7684\u8a71\u901a\u5e38\u662f\u6211\u5011\u7528\u4f86\u6e2c\u8a66\u5373\u5c07\u4e0a\u7dda stickers \u7684\u7248\u672c"

    .line 650
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 651
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "ok"

    new-instance v5, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;

    invoke-direct {v5, p0, v0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;Landroid/widget/EditText;)V

    .line 652
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 684
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 685
    return-void
.end method
