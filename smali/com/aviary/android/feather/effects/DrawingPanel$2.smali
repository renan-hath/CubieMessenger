.class Lcom/aviary/android/feather/effects/DrawingPanel$2;
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
    .line 207
    iput-object p1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

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
    .line 240
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

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

    .line 241
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->updateToast()V
    invoke-static {v0}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$400(Lcom/aviary/android/feather/effects/DrawingPanel;)V

    .line 242
    return-void
.end method

.method public onScrollFinished(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 211
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushColors:[I

    aget v2, v2, p3

    # setter for: Lcom/aviary/android/feather/effects/DrawingPanel;->mColor:I
    invoke-static {v1, v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$502(Lcom/aviary/android/feather/effects/DrawingPanel;I)I

    .line 212
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$100(Lcom/aviary/android/feather/effects/DrawingPanel;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->mColor:I
    invoke-static {v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$500(Lcom/aviary/android/feather/effects/DrawingPanel;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->mColor:I
    invoke-static {v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$500(Lcom/aviary/android/feather/effects/DrawingPanel;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 216
    .local v0, "is_eraser":Z
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->getSelectedTool()Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$200(Lcom/aviary/android/feather/effects/DrawingPanel;)Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    move-result-object v1

    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Zoom:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    if-ne v1, v2, :cond_3

    .line 217
    if-eqz v0, :cond_2

    .line 218
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Erase:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V
    invoke-static {v1, v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$300(Lcom/aviary/android/feather/effects/DrawingPanel;Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    .line 229
    :cond_0
    :goto_1
    return-void

    .line 214
    .end local v0    # "is_eraser":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    .restart local v0    # "is_eraser":Z
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Draw:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V
    invoke-static {v1, v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$300(Lcom/aviary/android/feather/effects/DrawingPanel;Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    goto :goto_1

    .line 223
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->getSelectedTool()Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$200(Lcom/aviary/android/feather/effects/DrawingPanel;)Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    move-result-object v1

    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Erase:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    if-eq v1, v2, :cond_4

    .line 224
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Erase:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V
    invoke-static {v1, v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$300(Lcom/aviary/android/feather/effects/DrawingPanel;Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    goto :goto_1

    .line 225
    :cond_4
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->getSelectedTool()Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$200(Lcom/aviary/android/feather/effects/DrawingPanel;)Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    move-result-object v1

    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Draw:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    if-eq v1, v2, :cond_0

    .line 226
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Draw:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V
    invoke-static {v1, v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$300(Lcom/aviary/android/feather/effects/DrawingPanel;Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    goto :goto_1
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
    .line 233
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->getSelectedTool()Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$200(Lcom/aviary/android/feather/effects/DrawingPanel;)Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    move-result-object v0

    sget-object v1, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Zoom:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$2;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    sget-object v1, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Draw:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    # invokes: Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V
    invoke-static {v0, v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$300(Lcom/aviary/android/feather/effects/DrawingPanel;Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    .line 236
    :cond_0
    return-void
.end method
