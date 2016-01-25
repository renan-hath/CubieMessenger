.class Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3$1;
.super Ljava/lang/Object;
.source "ManageCustomStickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;

.field final synthetic val$item:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3$1;->this$1:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3$1;->val$item:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->deleteCustomSticker()V

    .line 108
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3$1;->val$item:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->delete(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3$1;->this$1:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    # invokes: Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->loadCustomStickers()V
    invoke-static {v0}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->access$100(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;)V

    .line 110
    return-void
.end method
