.class Lcom/liquable/nemo/sticker/ManageStickerActivity$2;
.super Ljava/lang/Object;
.source "ManageStickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/ManageStickerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/ManageStickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/ManageStickerActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity$2;->this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity$2;->this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;

    # getter for: Lcom/liquable/nemo/sticker/ManageStickerActivity;->dragHandleTips:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->access$000(Lcom/liquable/nemo/sticker/ManageStickerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowDragHandleTips(Z)V

    .line 105
    return-void
.end method
