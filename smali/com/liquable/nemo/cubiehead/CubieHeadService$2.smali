.class Lcom/liquable/nemo/cubiehead/CubieHeadService$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CubieHeadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/CubieHeadService;->initCubieHead(Landroid/view/WindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$200(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    # setter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialX:I
    invoke-static {v1, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$102(Lcom/liquable/nemo/cubiehead/CubieHeadService;I)I

    .line 232
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$200(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    # setter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialY:I
    invoke-static {v1, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$302(Lcom/liquable/nemo/cubiehead/CubieHeadService;I)I

    .line 233
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    # setter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialTouchX:F
    invoke-static {v0, v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$402(Lcom/liquable/nemo/cubiehead/CubieHeadService;F)F

    .line 234
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    # setter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialTouchY:F
    invoke-static {v0, v1}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$502(Lcom/liquable/nemo/cubiehead/CubieHeadService;F)F

    .line 235
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$2;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # invokes: Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingOpen()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$600(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V

    .line 241
    const/4 v0, 0x1

    return v0
.end method
