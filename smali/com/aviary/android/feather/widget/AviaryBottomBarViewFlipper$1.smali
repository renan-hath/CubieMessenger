.class Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;
.super Ljava/lang/Object;
.source "AviaryBottomBarViewFlipper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->open()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    # getter for: Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->access$000(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    # getter for: Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->access$000(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;->OnOpenEnd()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 82
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    # getter for: Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->access$000(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$1;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    # getter for: Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->access$000(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;->OnOpenStart()V

    .line 79
    :cond_0
    return-void
.end method
