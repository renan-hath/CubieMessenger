.class public interface abstract Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
.super Ljava/lang/Object;
.source "AviaryMainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/AviaryMainController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeatherContext"
.end annotation


# virtual methods
.method public abstract activatePopupContainer()Landroid/view/ViewGroup;
.end method

.method public abstract deactivatePopupContainer()V
.end method

.method public abstract getBottomBar()Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;
.end method

.method public abstract getDrawingImageContainer()Landroid/view/ViewGroup;
.end method

.method public abstract getMainImage()Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.end method

.method public abstract getOptionsPanelContainer()Landroid/view/ViewGroup;
.end method

.method public abstract hideModalProgress()V
.end method

.method public abstract hideToolProgress()V
.end method

.method public abstract showModalProgress()V
.end method

.method public abstract showToolProgress()V
.end method
