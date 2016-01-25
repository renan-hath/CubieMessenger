.class Lcom/liquable/nemo/chat/paint/PaintWidget$11;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/ColorSelectorWidget$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$11;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$11;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    sget-object v1, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->BRUSH:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->switchMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)V

    .line 314
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$11;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/paint/PaintView;->setBrushColor(I)V

    .line 315
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$11;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    # invokes: Lcom/liquable/nemo/chat/paint/PaintWidget;->refreshButtonsState()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    .line 316
    return-void
.end method
