.class Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;
.super Ljava/lang/Object;
.source "ManageStickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/ManageStickerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 155
    .local v0, "pos":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    # invokes: Lcom/liquable/nemo/sticker/ManageStickerAdapter;->getSelectedCount()I
    invoke-static {v2}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->access$000(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->getItem(I)Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    move-result-object v2

    # getter for: Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->isSelected:Z
    invoke-static {v2}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->access$100(Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    # getter for: Lcom/liquable/nemo/sticker/ManageStickerAdapter;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->access$200(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d04c3

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->getItem(I)Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->getItem(I)Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    move-result-object v3

    # getter for: Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->isSelected:Z
    invoke-static {v3}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->access$100(Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->setSelected(Z)V

    .line 163
    iget-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    # invokes: Lcom/liquable/nemo/sticker/ManageStickerAdapter;->updated()V
    invoke-static {v1}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->access$300(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)V

    goto :goto_0

    .line 162
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
