.class Lcom/aviary/android/feather/effects/DrawingPanel$1;
.super Ljava/lang/Object;
.source "DrawingPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/DrawingPanel;->onActivate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/DrawingPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/DrawingPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$1;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$1;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/DrawingPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onScroll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$1;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->updateToast()V
    invoke-static {v0}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$400(Lcom/aviary/android/feather/effects/DrawingPanel;)V

    .line 204
    return-void
.end method

.method public onScrollFinished(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$1;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$1;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizes:[I

    aget v1, v1, p3

    # setter for: Lcom/aviary/android/feather/effects/DrawingPanel;->mSize:I
    invoke-static {v0, v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$002(Lcom/aviary/android/feather/effects/DrawingPanel;I)I

    .line 190
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$1;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$100(Lcom/aviary/android/feather/effects/DrawingPanel;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$1;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->mSize:I
    invoke-static {v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$000(Lcom/aviary/android/feather/effects/DrawingPanel;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    return-void
.end method

.method public onScrollStarted(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$1;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->getSelectedTool()Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$200(Lcom/aviary/android/feather/effects/DrawingPanel;)Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    move-result-object v0

    sget-object v1, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Zoom:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$1;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    sget-object v1, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Draw:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V
    invoke-static {v0, v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$300(Lcom/aviary/android/feather/effects/DrawingPanel;Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    .line 198
    :cond_0
    return-void
.end method
