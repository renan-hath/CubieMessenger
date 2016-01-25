.class Lcom/aviary/android/feather/AviaryMainController$5;
.super Ljava/lang/Object;
.source "AviaryMainController.java"

# interfaces
.implements Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/AviaryMainController;->onClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/AviaryMainController;

.field final synthetic val$isConfirmed:Z


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/AviaryMainController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/AviaryMainController;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController$5;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    iput-boolean p2, p0, Lcom/aviary/android/feather/AviaryMainController$5;->val$isConfirmed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseEnd()V
    .locals 2

    .prologue
    .line 778
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController$5;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    iget-boolean v0, p0, Lcom/aviary/android/feather/AviaryMainController$5;->val$isConfirmed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CONFIRMED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    :goto_0
    # invokes: Lcom/aviary/android/feather/AviaryMainController;->setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V
    invoke-static {v1, v0}, Lcom/aviary/android/feather/AviaryMainController;->access$300(Lcom/aviary/android/feather/AviaryMainController;Lcom/aviary/android/feather/AviaryMainController$STATE;)V

    .line 779
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController$5;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    # getter for: Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
    invoke-static {v0}, Lcom/aviary/android/feather/AviaryMainController;->access$400(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getBottomBar()Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->setOnViewChangingStatusListener(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;)V

    .line 780
    return-void

    .line 778
    :cond_0
    sget-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CANCEL:Lcom/aviary/android/feather/AviaryMainController$STATE;

    goto :goto_0
.end method

.method public OnCloseStart()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController$5;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    # getter for: Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-static {v0}, Lcom/aviary/android/feather/AviaryMainController;->access$200(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/effects/AbstractPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onClosing()V

    .line 774
    return-void
.end method

.method public OnOpenEnd()V
    .locals 0

    .prologue
    .line 769
    return-void
.end method

.method public OnOpenStart()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method
