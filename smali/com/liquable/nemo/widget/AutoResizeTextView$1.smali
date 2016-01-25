.class Lcom/liquable/nemo/widget/AutoResizeTextView$1;
.super Ljava/lang/Object;
.source "AutoResizeTextView.java"

# interfaces
.implements Lcom/liquable/nemo/widget/AutoResizeTextView$SizeTester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/widget/AutoResizeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/AutoResizeTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/AutoResizeTextView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTestSize(ILandroid/graphics/RectF;)I
    .locals 13
    .param p1, "suggestedSize"    # I
    .param p2, "availableSPace"    # Landroid/graphics/RectF;

    .prologue
    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v7, 0x1

    .line 85
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;
    invoke-static {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$000(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 86
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getMaxLines()I

    move-result v2

    if-ne v2, v7, :cond_1

    move v10, v7

    .line 88
    .local v10, "singleline":Z
    :goto_0
    if-eqz v10, :cond_2

    .line 89
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$100(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;
    invoke-static {v3}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$000(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 90
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$100(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;
    invoke-static {v3}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$000(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 113
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$100(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, v12, v12}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 114
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$100(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v7, v11

    .line 119
    :cond_0
    return v7

    .line 87
    .end local v10    # "singleline":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 92
    .restart local v10    # "singleline":Z
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    .line 93
    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;
    invoke-static {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$000(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    .line 94
    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mWidthLimit:I
    invoke-static {v3}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$200(Lcom/liquable/nemo/widget/AutoResizeTextView;)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v5, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    .line 96
    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingMult:F
    invoke-static {v5}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$300(Lcom/liquable/nemo/widget/AutoResizeTextView;)F

    move-result v5

    iget-object v6, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    .line 97
    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mSpacingAdd:F
    invoke-static {v6}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$400(Lcom/liquable/nemo/widget/AutoResizeTextView;)F

    move-result v6

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 100
    .local v0, "layout":Landroid/text/StaticLayout;
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getMaxLines()I

    move-result v2

    if-eq v2, v11, :cond_3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    iget-object v3, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    invoke-virtual {v3}, Lcom/liquable/nemo/widget/AutoResizeTextView;->getMaxLines()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$100(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 104
    const/4 v9, -0x1

    .line 105
    .local v9, "maxWidth":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v8, v2, :cond_5

    .line 106
    int-to-float v2, v9

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 107
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-int v9, v2

    .line 105
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 110
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/widget/AutoResizeTextView$1;->this$0:Lcom/liquable/nemo/widget/AutoResizeTextView;

    # getter for: Lcom/liquable/nemo/widget/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/liquable/nemo/widget/AutoResizeTextView;->access$100(Lcom/liquable/nemo/widget/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    int-to-float v3, v9

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_1
.end method
