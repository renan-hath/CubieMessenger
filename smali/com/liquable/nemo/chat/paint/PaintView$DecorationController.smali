.class Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;
.super Ljava/lang/Object;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecorationController"
.end annotation


# instance fields
.field private currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

.field private tapDetector:Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;

.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintView;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/paint/PaintView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearCurrentHandling()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->endTransform()V

    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->access$500(Lcom/liquable/nemo/chat/paint/PaintView;Z)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    .line 112
    :cond_0
    return-void
.end method

.method private handleDecorationByPoint(II)Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;
    .locals 5
    .param p1, "intX"    # I
    .param p2, "intY"    # I

    .prologue
    .line 118
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 119
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 120
    .local v2, "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    instance-of v3, v2, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    if-nez v3, :cond_1

    .line 118
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 124
    check-cast v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    .line 125
    .local v0, "decoration":Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->hitScaleRotateHandleTest(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    new-instance v3, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;-><init>(Lcom/liquable/nemo/chat/paint/TransformablePaintItem;Z)V

    .line 138
    .end local v0    # "decoration":Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .end local v2    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    :goto_1
    return-object v3

    .line 133
    .restart local v0    # "decoration":Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .restart local v2    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->hitTest(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    new-instance v3, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;-><init>(Lcom/liquable/nemo/chat/paint/TransformablePaintItem;Z)V

    goto :goto_1

    .line 138
    .end local v0    # "decoration":Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .end local v2    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 143
    .local v2, "intX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v3

    .line 145
    .local v3, "intY":I
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;

    iget-object v6, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-direct {v5, v6, v2, v3}, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;-><init>(Lcom/liquable/nemo/chat/paint/PaintView;II)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->tapDetector:Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;

    .line 146
    invoke-direct {p0, v2, v3}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->handleDecorationByPoint(II)Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    move-result-object v1

    .line 147
    .local v1, "found":Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;
    if-eqz v1, :cond_0

    .line 148
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 150
    .local v4, "nextIndex":I
    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->createForTransform(I)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v0

    .line 152
    .local v0, "created":Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    new-instance v5, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->moving:Z
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$600(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Z

    move-result v6

    invoke-direct {v5, v0, v6}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;-><init>(Lcom/liquable/nemo/chat/paint/TransformablePaintItem;Z)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    .line 153
    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->moving:Z
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$600(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v5}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startMove(II)V

    .line 166
    :goto_0
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    const/4 v6, 0x0

    # invokes: Lcom/liquable/nemo/chat/paint/PaintView;->resetCanvas(Z)V
    invoke-static {v5, v6}, Lcom/liquable/nemo/chat/paint/PaintView;->access$500(Lcom/liquable/nemo/chat/paint/PaintView;Z)V

    .line 167
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v6}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v0    # "created":Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .end local v4    # "nextIndex":I
    :cond_0
    return-void

    .line 156
    .restart local v0    # "created":Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .restart local v4    # "nextIndex":I
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v5}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startScaleRotate(II)V

    goto :goto_0
.end method

.method public onActionMove(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 173
    .local v0, "intX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 175
    .local v1, "intY":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->moving:Z
    invoke-static {v2}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$600(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v2}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->moveTo(II)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v2}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scaleRotateTo(II)V

    goto :goto_0
.end method

.method public onActionUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 186
    .local v1, "intX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 188
    .local v2, "intY":I
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->tapDetector:Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->tapDetector:Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;

    invoke-virtual {v4, v1, v2}, Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;->isSingleTap(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    if-nez v4, :cond_0

    .line 192
    new-instance v4, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-direct {v4, v5, v1, v2}, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;-><init>(Lcom/liquable/nemo/chat/paint/PaintView;II)V

    invoke-virtual {v4}, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->popup()V

    .line 221
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v4

    instance-of v4, v4, Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    if-eqz v4, :cond_2

    .line 198
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    invoke-virtual {v4}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->findPrevious()Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    move-result-object v0

    .line 199
    .local v0, "beforeMove":Lcom/liquable/nemo/chat/paint/PaintTextBubble;
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->toProperty(I)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v3

    .line 200
    .local v3, "toEdit":Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->onSelectPaintTextListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->access$200(Lcom/liquable/nemo/chat/paint/PaintView;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/liquable/nemo/chat/paint/OnPropertyListener;->onProperty(Ljava/lang/Object;)V

    .line 212
    .end local v0    # "beforeMove":Lcom/liquable/nemo/chat/paint/PaintTextBubble;
    .end local v3    # "toEdit":Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->undo()V

    .line 213
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v5}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 216
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->clearCurrentHandling()V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v4

    instance-of v4, v4, Lcom/liquable/nemo/chat/paint/PaintSticker;

    if-eqz v4, :cond_3

    .line 202
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/chat/paint/PaintSticker;

    invoke-virtual {v4}, Lcom/liquable/nemo/chat/paint/PaintSticker;->findPrevious()Lcom/liquable/nemo/chat/paint/PaintSticker;

    move-result-object v0

    .line 203
    .local v0, "beforeMove":Lcom/liquable/nemo/chat/paint/PaintSticker;
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/chat/paint/PaintSticker;->toProperty(I)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    move-result-object v3

    .line 204
    .local v3, "toEdit":Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->onEditPaintStickerListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->access$700(Lcom/liquable/nemo/chat/paint/PaintView;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/liquable/nemo/chat/paint/OnPropertyListener;->onProperty(Ljava/lang/Object;)V

    goto :goto_1

    .line 205
    .end local v0    # "beforeMove":Lcom/liquable/nemo/chat/paint/PaintSticker;
    .end local v3    # "toEdit":Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    :cond_3
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v4

    instance-of v4, v4, Lcom/liquable/nemo/chat/paint/PaintEmoji;

    if-eqz v4, :cond_1

    .line 206
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/chat/paint/PaintEmoji;

    invoke-virtual {v4}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->findPrevious()Lcom/liquable/nemo/chat/paint/PaintEmoji;

    move-result-object v0

    .line 207
    .local v0, "beforeMove":Lcom/liquable/nemo/chat/paint/PaintEmoji;
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->toProperty(I)Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    move-result-object v3

    .line 208
    .local v3, "toEdit":Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->onEditPaintEmojiListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->access$800(Lcom/liquable/nemo/chat/paint/PaintView;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/liquable/nemo/chat/paint/OnPropertyListener;->onProperty(Ljava/lang/Object;)V

    goto :goto_1

    .line 219
    .end local v0    # "beforeMove":Lcom/liquable/nemo/chat/paint/PaintEmoji;
    .end local v3    # "toEdit":Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
    :cond_4
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->clearCurrentHandling()V

    goto/16 :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->currentHandling:Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->decoration:Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;->access$400(Lcom/liquable/nemo/chat/paint/PaintView$HandlingDecoration;)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->paint(Landroid/graphics/Canvas;)V

    .line 227
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->clearCurrentHandling()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->tapDetector:Lcom/liquable/nemo/chat/paint/PaintView$TapDetector;

    .line 236
    return-void
.end method

.method public setShowHandle(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 239
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationController;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintItem;

    .line 240
    .local v0, "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    instance-of v2, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    if-eqz v2, :cond_0

    .line 241
    check-cast v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;

    .end local v0    # "item":Lcom/liquable/nemo/chat/paint/PaintItem;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->setShowHandle(Z)V

    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method
