.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCleanStickers;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerCleanStickers"
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
    .line 140
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCleanStickers;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 141
    const-string/jumbo v0, "\u6e05\u7a7a sticker \u76f8\u95dc tables"

    const-string/jumbo v1, "sticker packages \u5fc5\u9808\u91cd\u65b0\u4e0b\u8f09"

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCleanStickers;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

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
    .line 139
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCleanStickers;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCleanStickers;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->reloadStickerTables(Landroid/content/Context;)V

    .line 147
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCleanStickers;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 148
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->updateStickerRoot(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method
