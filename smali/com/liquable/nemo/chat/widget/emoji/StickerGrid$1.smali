.class Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$1;
.super Ljava/lang/Object;
.source "StickerGrid.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->updateGrid(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$1;->this$0:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 74
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 75
    .local v0, "item":Lcom/liquable/nemo/model/sticker/StickerDto;
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$1;->this$0:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    # getter for: Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->listener:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->access$000(Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;)Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;->onStickerClick(Ljava/lang/String;)V

    .line 76
    return-void
.end method
