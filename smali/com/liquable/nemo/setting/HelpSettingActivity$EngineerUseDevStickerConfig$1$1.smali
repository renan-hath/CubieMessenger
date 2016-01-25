.class Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

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
    .line 655
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 659
    const/16 v0, 0xa

    .line 661
    .local v0, "devRevision":I
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;

    iget-object v1, v1, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 665
    :goto_0
    sput v0, Lcom/liquable/nemo/sticker/model/StickerManager;->devRevision:I

    .line 666
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>> devRevision:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 667
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;

    iget-object v2, v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;

    iget-object v2, v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 668
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->updateStickerRoot(Landroid/content/Context;Ljava/lang/String;)V

    .line 669
    const/4 v1, 0x0

    return-object v1

    .line 662
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 655
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;

    iget-object v0, v0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;

    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;

    iget-object v1, v1, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;

    # invokes: Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->revision()Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->access$100(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->updateSummary(Ljava/lang/String;)V

    .line 680
    return-void
.end method
