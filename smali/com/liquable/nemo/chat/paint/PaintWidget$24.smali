.class Lcom/liquable/nemo/chat/paint/PaintWidget$24;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintWidget;->initQuickAction(Landroid/content/Context;)V
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
    .line 528
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$24;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lnet/londatiga/android/BrushsQuickAction;II)V
    .locals 1
    .param p1, "source"    # Lnet/londatiga/android/BrushsQuickAction;
    .param p2, "pos"    # I
    .param p3, "actionId"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$24;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0, p3}, Lcom/liquable/nemo/chat/paint/PaintView;->changeGraphicsWidth(I)V

    .line 533
    return-void
.end method
