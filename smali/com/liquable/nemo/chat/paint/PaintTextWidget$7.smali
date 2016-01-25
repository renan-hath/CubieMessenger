.class Lcom/liquable/nemo/chat/paint/PaintTextWidget$7;
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
    .line 102
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    invoke-static {v3}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$100(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintBubbleStyle()Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    move-result-object v2

    .line 108
    .local v2, "original":Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;
    sget-object v3, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->ALL_STYLES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 110
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .line 111
    .local v1, "nextIndex":I
    sget-object v3, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->ALL_STYLES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 112
    const/4 v1, 0x0

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    invoke-static {v3}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$100(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v5

    sget-object v3, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->ALL_STYLES:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    invoke-virtual {v5, v3}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->withStyle(Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v3

    # setter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    invoke-static {v4, v3}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$102(Lcom/liquable/nemo/chat/paint/PaintTextWidget;Lcom/liquable/nemo/chat/paint/PaintTextProperty;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .line 116
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    invoke-static {v3}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$100(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintBubbleStyle()Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$7;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editBubbleLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$600(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->apply(Landroid/view/View;)V

    .line 118
    return-void
.end method
