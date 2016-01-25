.class Lcom/liquable/nemo/chat/widget/YoutubeWidget$2$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "YoutubeWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 130
    const/high16 v0, -0x3c060000    # -500.0f

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;->val$onClippedButtonClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 133
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;->val$onClippedButtonClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 139
    const/4 v0, 0x1

    return v0
.end method
