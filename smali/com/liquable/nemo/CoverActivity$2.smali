.class Lcom/liquable/nemo/CoverActivity$2;
.super Landroid/os/AsyncTask;
.source "CoverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/CoverActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/CoverActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/CoverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/CoverActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/liquable/nemo/CoverActivity$2;->this$0:Lcom/liquable/nemo/CoverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 78
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/CoverActivity$2;->this$0:Lcom/liquable/nemo/CoverActivity;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->writeImageFilesFromAssetsToFileSystem(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 79
    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->migrateLegacyImageFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 78
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/CoverActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setImageFilesWrittenToFileSystem(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/CoverActivity$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
