.class Lcom/aviary/android/feather/AviaryMainController$4;
.super Ljava/lang/Object;
.source "AviaryMainController.java"

# interfaces
.implements Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/AviaryMainController;->activateTool(Lcom/aviary/android/feather/library/content/ToolEntry;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/AviaryMainController;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/AviaryMainController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/AviaryMainController;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController$4;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseEnd()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public OnCloseStart()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public OnOpenEnd()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController$4;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->OPENED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    # invokes: Lcom/aviary/android/feather/AviaryMainController;->setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V
    invoke-static {v0, v1}, Lcom/aviary/android/feather/AviaryMainController;->access$300(Lcom/aviary/android/feather/AviaryMainController;Lcom/aviary/android/feather/AviaryMainController$STATE;)V

    .line 517
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController$4;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    # getter for: Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
    invoke-static {v0}, Lcom/aviary/android/feather/AviaryMainController;->access$400(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getBottomBar()Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->setOnViewChangingStatusListener(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;)V

    .line 518
    return-void
.end method

.method public OnOpenStart()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController$4;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    # getter for: Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-static {v0}, Lcom/aviary/android/feather/AviaryMainController;->access$200(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/effects/AbstractPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onOpening()V

    .line 512
    return-void
.end method
