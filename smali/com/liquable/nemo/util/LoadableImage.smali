.class public interface abstract Lcom/liquable/nemo/util/LoadableImage;
.super Ljava/lang/Object;
.source "LoadableImage.java"


# virtual methods
.method public abstract clearViewIfNotYetLoaded()Z
.end method

.method public abstract getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;
.end method

.method public abstract imageMissingResourceId()I
.end method

.method public abstract isLoading()Z
.end method

.method public abstract load(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method public abstract predictSize(FLandroid/view/View;)V
.end method

.method public abstract showLoadingAnimation()Z
.end method
