.class Lcom/liquable/nemo/cubiehead/CubieHeadService$3;
.super Ljava/lang/Object;
.source "CubieHeadService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$mGestureListener:Landroid/view/GestureDetector;

.field final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/CubieHeadService;Landroid/view/GestureDetector;Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    iput-object p2, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->val$mGestureListener:Landroid/view/GestureDetector;

    iput-object p3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->val$windowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 247
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->val$mGestureListener:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 283
    :goto_0
    return v6

    .line 250
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialTouchX:F
    invoke-static {v4}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$400(Lcom/liquable/nemo/cubiehead/CubieHeadService;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 251
    .local v1, "deltaX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialTouchY:F
    invoke-static {v4}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$500(Lcom/liquable/nemo/cubiehead/CubieHeadService;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 252
    .local v2, "deltaY":I
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$700(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v5, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v5, :cond_1

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$700(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$800(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02040e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$200(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 257
    .local v0, "cubieHeadLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialX:I
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$100(Lcom/liquable/nemo/cubiehead/CubieHeadService;)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 258
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->initialY:I
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$300(Lcom/liquable/nemo/cubiehead/CubieHeadService;)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 259
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->val$windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;
    invoke-static {v4}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$200(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # invokes: Lcom/liquable/nemo/cubiehead/CubieHeadService;->isHeadInRemover()Z
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$900(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$700(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-virtual {v4}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 264
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$700(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-virtual {v4}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 270
    .end local v0    # "cubieHeadLayoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "deltaX":I
    .end local v2    # "deltaY":I
    :pswitch_1
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHeadRemover:Landroid/view/View;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$700(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # invokes: Lcom/liquable/nemo/cubiehead/CubieHeadService;->isHeadInRemover()Z
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$900(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 274
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$200(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 275
    .restart local v0    # "cubieHeadLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # invokes: Lcom/liquable/nemo/cubiehead/CubieHeadService;->snapCubieHead(Landroid/view/WindowManager$LayoutParams;)V
    invoke-static {v3, v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$1000(Lcom/liquable/nemo/cubiehead/CubieHeadService;Landroid/view/WindowManager$LayoutParams;)V

    .line 276
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/Pref;->saveCubieHeadPosition(II)V

    .line 278
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->val$windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$3;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # getter for: Lcom/liquable/nemo/cubiehead/CubieHeadService;->cubieHead:Landroid/view/View;
    invoke-static {v4}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$200(Lcom/liquable/nemo/cubiehead/CubieHeadService;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
