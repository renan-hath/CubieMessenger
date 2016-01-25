.class Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;
.super Landroid/os/AsyncTask;
.source "ManageCustomStickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->loadCustomStickers()V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->listAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/custom/model/CustomSticker;>;"
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->removeDialog(I)V

    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->customStickerAdapter:Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->access$000(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;)Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->reset(Ljava/util/List;)V

    .line 51
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->showDialog(I)V

    .line 56
    return-void
.end method
