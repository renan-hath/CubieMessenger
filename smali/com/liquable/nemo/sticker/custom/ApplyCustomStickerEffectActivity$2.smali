.class Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$2;
.super Ljava/lang/Object;
.source "ApplyCustomStickerEffectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$2;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$2;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->DEFAULT_EFFECTS:Ljava/util/List;
    invoke-static {}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$600()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    # setter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v1, v0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$502(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    .line 412
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$2;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$700(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    return-void
.end method
