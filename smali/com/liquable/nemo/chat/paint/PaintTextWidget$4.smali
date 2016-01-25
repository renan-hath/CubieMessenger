.class Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;
.super Ljava/lang/Object;
.source "PaintTextWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintTextWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "input":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    invoke-static {v2}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$100(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->withText(Ljava/lang/String;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .line 73
    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getHeight()I

    move-result v4

    .line 72
    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->withTextDimension(II)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v2

    # setter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$102(Lcom/liquable/nemo/chat/paint/PaintTextWidget;Lcom/liquable/nemo/chat/paint/PaintTextProperty;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .line 74
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onSaveListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$200(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    invoke-static {v2}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$100(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/chat/paint/OnPropertyListener;->onProperty(Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$4;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # invokes: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->resetBubbleLayoutToWorkaroundIncorrectPaddingInSetProperty()V
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$300(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    goto :goto_0
.end method
