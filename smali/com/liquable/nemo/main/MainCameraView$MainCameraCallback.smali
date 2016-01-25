.class public interface abstract Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Lcom/liquable/nemo/BaseFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/main/MainCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainCameraCallback"
.end annotation


# virtual methods
.method public abstract onCameraReady()V
.end method

.method public abstract onGalleryButtonClicked()V
.end method

.method public abstract onPictureTaken(Landroid/net/Uri;Z)V
.end method

.method public abstract onVideoTaken(Lcom/liquable/nemo/share/SharableVideo;)V
.end method
