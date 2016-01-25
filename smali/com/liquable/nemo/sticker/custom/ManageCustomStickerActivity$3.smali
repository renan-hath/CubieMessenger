.class Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;
.super Ljava/lang/Object;
.source "ManageCustomStickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    .line 101
    .local v0, "adapter":Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;
    invoke-virtual {v0, p3}, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .line 102
    .local v2, "item":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    invoke-static {v3}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    const v7, 0x7f0d017b

    .line 103
    invoke-virtual {v6, v7}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3$1;

    invoke-direct {v5, p0, v2}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3$1;-><init>(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 113
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 114
    return v8
.end method
