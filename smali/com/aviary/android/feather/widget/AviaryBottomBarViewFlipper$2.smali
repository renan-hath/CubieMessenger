.class Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;
.super Ljava/lang/Object;
.source "AviaryBottomBarViewFlipper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->close()Z
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
    .line 110
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    # getter for: Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->access$000(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    # getter for: Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->access$000(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;->OnCloseEnd()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    # getter for: Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->access$000(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    # getter for: Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->access$000(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;)Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;->OnCloseStart()V

    .line 116
    :cond_0
    return-void
.end method
