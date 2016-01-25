.class public abstract Lcom/liquable/nemo/util/AbstractLoadableImage;
.super Ljava/lang/Object;
.source "AbstractLoadableImage.java"

# interfaces
.implements Lcom/liquable/nemo/util/LoadableImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearViewIfNotYetLoaded()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/AbstractLoadableImage;->keyEquals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->NONE:Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;->keyHashCode()I

    move-result v0

    return v0
.end method

.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public abstract keyEquals(Ljava/lang/Object;)Z
.end method

.method public abstract keyHashCode()I
.end method

.method public showLoadingAnimation()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
