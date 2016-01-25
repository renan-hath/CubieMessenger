.class Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$2;
.super Ljava/lang/Object;
.source "ManageCustomStickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$tipsView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$2;->this$0:Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$2;->val$tipsView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$2;->val$tipsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCustomStickerTips(Z)V

    .line 87
    return-void
.end method
