.class Lcom/liquable/nemo/chat/paint/PaintStickerWidget$8;
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
    .line 93
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$8;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$8;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$8;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->toggleFlip()Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    move-result-object v1

    # setter for: Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->access$002(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;Lcom/liquable/nemo/chat/paint/PaintStickerProperty;)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerWidget$8;->this$0:Lcom/liquable/nemo/chat/paint/PaintStickerWidget;

    # invokes: Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->render()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintStickerWidget;->access$400(Lcom/liquable/nemo/chat/paint/PaintStickerWidget;)V

    .line 100
    return-void
.end method
