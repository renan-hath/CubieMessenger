.class Lcom/aviary/android/feather/library/services/drag/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/services/drag/DragView;->remove(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/services/drag/DragView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/drag/DragView$1;->this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

    iput-object p2, p0, Lcom/aviary/android/feather/library/services/drag/DragView$1;->val$view:Landroid/view/View;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEasingFinished(D)V
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 209
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView$1;->this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

    # getter for: Lcom/aviary/android/feather/library/services/drag/DragView;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/aviary/android/feather/library/services/drag/DragView;->access$3(Lcom/aviary/android/feather/library/services/drag/DragView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method public onEasingStarted(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 205
    return-void
.end method

.method public onEasingValueChanged(DD)V
    .locals 5
    .param p1, "value"    # D
    .param p3, "oldValue"    # D

    .prologue
    .line 199
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView$1;->this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-object v3, p0, Lcom/aviary/android/feather/library/services/drag/DragView$1;->this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

    # getter for: Lcom/aviary/android/feather/library/services/drag/DragView;->mScale:F
    invoke-static {v3}, Lcom/aviary/android/feather/library/services/drag/DragView;->access$0(Lcom/aviary/android/feather/library/services/drag/DragView;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    float-to-double v3, v3

    mul-double/2addr v3, p1

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/aviary/android/feather/library/services/drag/DragView$1;->this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

    # getter for: Lcom/aviary/android/feather/library/services/drag/DragView;->mScale:F
    invoke-static {v3}, Lcom/aviary/android/feather/library/services/drag/DragView;->access$0(Lcom/aviary/android/feather/library/services/drag/DragView;)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/services/drag/DragView;->access$1(Lcom/aviary/android/feather/library/services/drag/DragView;F)V

    .line 200
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView$1;->this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

    # getter for: Lcom/aviary/android/feather/library/services/drag/DragView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/aviary/android/feather/library/services/drag/DragView;->access$2(Lcom/aviary/android/feather/library/services/drag/DragView;)Landroid/graphics/Paint;

    move-result-object v0

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView$1;->this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/drag/DragView;->invalidate()V

    .line 202
    return-void
.end method
