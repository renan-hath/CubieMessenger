.class Lcom/liquable/nemo/chat/paint/PaintWidget$7;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 240
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView;->undo()V

    .line 244
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    # invokes: Lcom/liquable/nemo/chat/paint/PaintWidget;->refreshButtonsState()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    .line 245
    return-void
.end method
