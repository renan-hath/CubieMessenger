.class Lcom/liquable/nemo/widget/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/widget/TouchImageView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/liquable/nemo/widget/TouchImageView$ScaleListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/widget/TouchImageView;Lcom/liquable/nemo/widget/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/widget/TouchImageView;
    .param p2, "x1"    # Lcom/liquable/nemo/widget/TouchImageView$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/liquable/nemo/widget/TouchImageView$ScaleListener;-><init>(Lcom/liquable/nemo/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$ScaleListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 58
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    const/4 v3, 0x0

    const v4, 0x3f733333    # 0.95f

    .line 60
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3ff0cccccccccccdL    # 1.05

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 57
    # invokes: Lcom/liquable/nemo/widget/TouchImageView;->scale(FFZF)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/widget/TouchImageView;->access$000(Lcom/liquable/nemo/widget/TouchImageView;FFZF)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$ScaleListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/liquable/nemo/widget/TouchImageView;->mode:I

    .line 67
    const/4 v0, 0x1

    return v0
.end method
