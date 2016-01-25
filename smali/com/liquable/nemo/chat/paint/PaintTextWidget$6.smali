.class Lcom/liquable/nemo/chat/paint/PaintTextWidget$6;
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
    .line 92
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$500(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$100(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/chat/paint/OnPropertyListener;->onProperty(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # invokes: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->resetBubbleLayoutToWorkaroundIncorrectPaddingInSetProperty()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$300(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V

    .line 98
    return-void
.end method
