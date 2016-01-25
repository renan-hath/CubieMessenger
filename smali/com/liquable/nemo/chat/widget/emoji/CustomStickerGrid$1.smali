.class Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid$1;
.super Ljava/lang/Object;
.source "CustomStickerGrid.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->init(Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;Lcom/liquable/nemo/util/ImageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

.field final synthetic val$onCustomStickerSendListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid$1;->this$0:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid$1;->val$onCustomStickerSendListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 48
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 49
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid$1;->val$onCustomStickerSendListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    invoke-interface {v1}, Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;->onCustomStickerAdd()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .line 53
    .local v0, "item":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid$1;->val$onCustomStickerSendListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;->onCustomStickerSend(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    goto :goto_0
.end method
