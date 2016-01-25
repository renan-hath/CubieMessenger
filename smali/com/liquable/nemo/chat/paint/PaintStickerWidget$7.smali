.class Lcom/liquable/nemo/chat/paint/PaintStickerWidget$7;
.super Ljava/lang/Object;
.source "PaintStickerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintStickerWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 83
    .local v0, "nextSticker":I
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerDto;->getFrames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    invoke-static {v2}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->withStickerIndex(I)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    move-result-object v2

    # setter for: Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->access$002(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;Lcom/liquable/nemo/chat/paint/PaintStickerProperty;)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .line 88
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    # invokes: Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->render()V
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->access$400(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    .line 89
    return-void
.end method
