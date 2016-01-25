.class Lcom/liquable/nemo/chat/paint/PaintWidget$18;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/OnPropertyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintWidget;->buildPaintStickerWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
        "<",
        "Lcom/liquable/nemo/chat/paint/PaintStickerProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$18;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProperty(Lcom/liquable/nemo/chat/paint/PaintStickerProperty;)V
    .locals 2
    .param p1, "paintStickerProperty"    # Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$18;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintWidget;->onSwitchWidget:Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->access$800(Lcom/liquable/nemo/chat/paint/PaintWidget;)Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;->onSwitchWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 381
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$18;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getPaintItemIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->deleteDecoration(I)V

    .line 382
    return-void
.end method

.method public bridge synthetic onProperty(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 376
    check-cast p1, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintWidget$18;->onProperty(Lcom/liquable/nemo/chat/paint/PaintStickerProperty;)V

    return-void
.end method
