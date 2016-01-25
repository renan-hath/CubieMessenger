.class public Lcom/liquable/nemo/map/ItemizedOverlayWithListener;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "ItemizedOverlayWithListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;-><init>(Landroid/graphics/drawable/Drawable;Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;)V
    .locals 1
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "listener"    # Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->mOverlays:Ljava/util/ArrayList;

    .line 27
    iput-object p2, p0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->listener:Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;

    .line 28
    invoke-virtual {p0}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->populate()V

    .line 29
    return-void
.end method


# virtual methods
.method public addOverlay(Lcom/google/android/maps/OverlayItem;)V
    .locals 1
    .param p1, "overlay"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p0}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->populate()V

    .line 34
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "arg2"    # Z

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 44
    return-void
.end method

.method public getCenter()Lcom/google/android/maps/GeoPoint;
    .locals 8

    .prologue
    .line 48
    const v2, 0x7fffffff

    .local v2, "minLat":I
    const/high16 v0, -0x80000000

    .local v0, "maxLat":I
    const v3, 0x7fffffff

    .local v3, "minLng":I
    const/high16 v1, -0x80000000

    .line 49
    .local v1, "maxLng":I
    iget-object v5, p0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/OverlayItem;

    .line 50
    .local v4, "overlayItem":Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v4}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 51
    invoke-virtual {v4}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    invoke-virtual {v4}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 53
    invoke-virtual {v4}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 54
    goto :goto_0

    .line 55
    .end local v4    # "overlayItem":Lcom/google/android/maps/OverlayItem;
    :cond_0
    new-instance v5, Lcom/google/android/maps/GeoPoint;

    sub-int v6, v0, v2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    sub-int v7, v1, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    return-object v5
.end method

.method public onTap(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->listener:Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->listener:Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;

    iget-object v0, p0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;->onTap(Lcom/google/android/maps/OverlayItem;)V

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
