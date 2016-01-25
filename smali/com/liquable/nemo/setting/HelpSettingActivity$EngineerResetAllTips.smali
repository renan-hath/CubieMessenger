.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerResetAllTips;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerResetAllTips"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerResetAllTips;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 359
    const-string/jumbo v0, "\u518d\u6b21\u986f\u793a\u6240\u6709 tips"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerResetAllTips;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 364
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowDoubleTapToLikeArtworkDescription(Z)V

    .line 365
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowDragHandleTips(Z)V

    .line 366
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowSecretMessageLockTips(Z)V

    .line 367
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowSecretMessageUnlockTips(Z)V

    .line 368
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowSDCardMemoryLowWarning(Z)V

    .line 369
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowVoiceMessageSettingTips(Z)V

    .line 370
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCaseEffectButton(Z)V

    .line 371
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCaseGalleryButton(Z)V

    .line 372
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCustomStickerTips(Z)V

    .line 373
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCaseEmojiCustomStickerButton(Z)V

    .line 374
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCaseForum(Z)V

    .line 375
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCaseForumArticleList(Z)V

    .line 376
    return-void
.end method
