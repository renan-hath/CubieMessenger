.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTestInvalidSticker;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerTestInvalidSticker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 485
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTestInvalidSticker;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 486
    const-string/jumbo v0, "StickerManager.testStickerNotFoundAndNotVisible"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTestInvalidSticker;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 491
    sget-boolean v0, Lcom/liquable/nemo/sticker/model/StickerManager;->testStickerNotFoundAndNotVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/liquable/nemo/sticker/model/StickerManager;->testStickerNotFoundAndNotVisible:Z

    .line 492
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>>>> StickerManager.testStickerNotFoundAndNotVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/liquable/nemo/sticker/model/StickerManager;->testStickerNotFoundAndNotVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
