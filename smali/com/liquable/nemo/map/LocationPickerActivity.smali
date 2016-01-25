.class public Lcom/liquable/nemo/map/LocationPickerActivity;
.super Lcom/liquable/nemo/map/BaseMapActivity;
.source "LocationPickerActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/map/LocationPickerActivity$Mode;
    }
.end annotation


# static fields
.field private static final DEFAULT_ZOOM_LEVEL:I = 0x10

.field private static final MAX_SEARCH_ADDRESS_RESULTS:I = 0x1

.field private static final MAX_SEARCH_LOCATION_RESULTS:I = 0xa

.field private static final SEARCH_LAT_LNG_OFFSET:D = 50000.0

.field private static final _1E6:I = 0xf4240

.field static debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private geoCoder:Landroid/location/Geocoder;

.field private getAddressFromLocationTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private getFromLocationNameTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private locationManager:Landroid/location/LocationManager;

.field private mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

.field private mode:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

.field private myLoc:Lcom/google/android/maps/MyLocationOverlay;

.field private myLocAddress:Landroid/widget/TextView;

.field private myLocMarker:Landroid/view/View;

.field private overlays:Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private shareAddress:Ljava/lang/String;

.field private shareLocation:Lcom/google/android/maps/GeoPoint;

.field private shareMapButtons:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/liquable/nemo/map/LocationPickerActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/map/BaseMapActivity;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/map/LocationPickerActivity;)Lcom/liquable/nemo/map/LocationPickerActivity$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mode:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/map/LocationPickerActivity;Lcom/google/android/maps/OverlayItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;
    .param p1, "x1"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->onMarkerClick(Lcom/google/android/maps/OverlayItem;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/map/LocationPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->clearSearch()V

    return-void
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/map/LocationPickerActivity;Landroid/location/Location;)Landroid/location/Address;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/map/LocationPickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLocAddress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/map/LocationPickerActivity;Landroid/location/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;
    .param p1, "x1"    # Landroid/location/Address;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressString(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Lcom/liquable/nemo/map/LocationPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/liquable/nemo/map/LocationPickerActivity;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareLocation:Lcom/google/android/maps/GeoPoint;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/map/LocationPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->showMyLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/map/LocationPickerActivity;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/map/LocationPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->switchToMoveMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/map/LocationPickerActivity;)Lcom/google/android/maps/MyLocationOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/map/LocationPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->returnLocationToShare()V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/map/LocationPickerActivity;Lcom/google/android/maps/GeoPoint;II)[D
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/map/LocationPickerActivity;->getBoundingBox(Lcom/google/android/maps/GeoPoint;II)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/map/LocationPickerActivity;)Landroid/location/Geocoder;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->geoCoder:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$800(Landroid/location/Address;[D)Z
    .locals 1
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # [D

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->isAddressWithinBoundingBox(Landroid/location/Address;[D)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/map/LocationPickerActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/map/LocationPickerActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->showSeachResults(Ljava/util/List;)V

    return-void
.end method

.method private clearSearch()V
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "clearSearch"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->overlays:Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->overlays:Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    new-instance v0, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    invoke-virtual {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020497

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/map/LocationPickerActivity$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/map/LocationPickerActivity$1;-><init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;-><init>(Landroid/graphics/drawable/Drawable;Lcom/liquable/nemo/map/ItemizedOverlayWithListener$TapListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->overlays:Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->overlays:Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 114
    return-void
.end method

.method private getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->geoCoder:Landroid/location/Geocoder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 119
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 118
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 121
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 122
    .local v6, "address":Landroid/location/Address;
    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFromLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v6    # "address":Landroid/location/Address;
    .end local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v8

    .line 128
    .local v8, "e":Ljava/io/IOException;
    sget-object v0, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "geoCoder.getFromLocation"

    invoke-virtual {v0, v1, v8}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .end local v8    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 124
    .restart local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getAddressString(Landroid/location/Address;)Ljava/lang/String;
    .locals 3
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 136
    invoke-virtual {p1, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 138
    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getBoundingBox(Lcom/google/android/maps/GeoPoint;II)[D
    .locals 8
    .param p1, "center"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "latSpan"    # I
    .param p3, "lngSpan"    # I

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    const-wide v4, 0x40e86a0000000000L    # 50000.0

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    div-int/lit8 v3, p2, 0x2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    sub-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 146
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    div-int/lit8 v3, p3, 0x2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    sub-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 147
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 148
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    div-int/lit8 v3, p3, 0x2

    add-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, v0, v1

    return-object v0
.end method

.method private getLastLocation()Lcom/liquable/nemo/util/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "mostAccurateLoc":Landroid/location/Location;
    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->locationManager:Landroid/location/LocationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, "provider":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 155
    .local v0, "lastKnownLocation":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 159
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 160
    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 164
    .end local v0    # "lastKnownLocation":Landroid/location/Location;
    .end local v2    # "provider":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 165
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v3

    .line 168
    :goto_1
    return-object v3

    :cond_3
    invoke-static {v1}, Lcom/liquable/nemo/util/Optional;->of(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v3

    goto :goto_1
.end method

.method private static isAddressWithinBoundingBox(Landroid/location/Address;[D)Z
    .locals 6
    .param p0, "address"    # Landroid/location/Address;
    .param p1, "boundingBox"    # [D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    aget-wide v2, p1, v1

    invoke-virtual {p0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    aget-wide v2, p1, v0

    .line 54
    invoke-virtual {p0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    const/4 v4, 0x3

    aget-wide v4, p1, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private onMarkerClick(Lcom/google/android/maps/OverlayItem;)V
    .locals 3
    .param p1, "overlayItem"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 269
    sget-object v0, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "click marker: title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareAddress:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareLocation:Lcom/google/android/maps/GeoPoint;

    .line 272
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d033a

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0474

    new-instance v2, Lcom/liquable/nemo/map/LocationPickerActivity$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/map/LocationPickerActivity$5;-><init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c5

    const/4 v2, 0x0

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 284
    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private returnLocationToShare()V
    .locals 5

    .prologue
    .line 306
    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareLocation:Lcom/google/android/maps/GeoPoint;

    if-nez v1, :cond_0

    .line 307
    const v1, 0x7f0d03db

    invoke-static {p0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 319
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareAddress:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareAddress:Ljava/lang/String;

    .line 313
    :cond_1
    new-instance v1, Lcom/liquable/nemo/map/SharableLocation;

    iget-object v2, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareLocation:Lcom/google/android/maps/GeoPoint;

    .line 314
    invoke-static {v3}, Lcom/liquable/nemo/map/LocationHelper;->geoPointToLocation(Lcom/google/android/maps/GeoPoint;)Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 315
    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/liquable/nemo/map/SharableLocation;-><init>(Ljava/lang/String;Landroid/location/Location;I)V

    invoke-virtual {v1}, Lcom/liquable/nemo/map/SharableLocation;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "share:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 317
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 318
    invoke-virtual {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->finish()V

    goto :goto_0
.end method

.method private searchLocation(Lcom/google/android/maps/GeoPoint;IILjava/lang/String;)V
    .locals 6
    .param p1, "center"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "latSpan"    # I
    .param p3, "lngSpan"    # I
    .param p4, "input"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getFromLocationNameTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getFromLocationNameTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getFromLocationNameTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 328
    :cond_0
    new-instance v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/map/LocationPickerActivity$6;-><init>(Lcom/liquable/nemo/map/LocationPickerActivity;Lcom/google/android/maps/GeoPoint;IILjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 387
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/map/LocationPickerActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getFromLocationNameTask:Landroid/os/AsyncTask;

    .line 388
    return-void
.end method

.method private showMyLocation()V
    .locals 4

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->isRunning:Z

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mode:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->MOVE:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareLocation:Lcom/google/android/maps/GeoPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareLocation:Lcom/google/android/maps/GeoPoint;

    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressFromLocationTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressFromLocationTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 402
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressFromLocationTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 404
    :cond_2
    new-instance v0, Lcom/liquable/nemo/map/LocationPickerActivity$7;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/map/LocationPickerActivity$7;-><init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 431
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/map/LocationPickerActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressFromLocationTask:Landroid/os/AsyncTask;

    .line 434
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/map/LocationPickerActivity$8;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/map/LocationPickerActivity$8;-><init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showSeachResults(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->switchToSearchMode()V

    .line 445
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 446
    .local v0, "address":Landroid/location/Address;
    sget-object v3, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "search address result: feature:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 448
    invoke-direct {p0, v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressString(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 451
    new-instance v1, Lcom/google/android/maps/OverlayItem;

    invoke-static {v0}, Lcom/liquable/nemo/map/LocationHelper;->addressToGeoPoint(Landroid/location/Address;)Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    .line 452
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    .line 453
    invoke-direct {p0, v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressString(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .local v1, "overlayItem":Lcom/google/android/maps/OverlayItem;
    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->overlays:Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    goto :goto_0

    .line 457
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "overlayItem":Lcom/google/android/maps/OverlayItem;
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapController:Lcom/google/android/maps/MapController;

    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->overlays:Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    invoke-virtual {v3}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->getCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 458
    iget-object v2, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapController:Lcom/google/android/maps/MapController;

    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->overlays:Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    invoke-virtual {v3}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->getLatSpanE6()I

    move-result v3

    iget-object v4, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->overlays:Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    invoke-virtual {v4}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->getLonSpanE6()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    .line 459
    return-void
.end method

.method private switchToMoveMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    sget-object v0, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "switchToMoveMode"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 463
    sget-object v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->MOVE:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    iput-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mode:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    .line 464
    invoke-direct {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->clearSearch()V

    .line 465
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareMapButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLocMarker:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 467
    return-void
.end method

.method private switchToSearchMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 470
    sget-object v0, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "switchToSearchMode"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->SEARCH:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    iput-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mode:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    .line 472
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareMapButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLocMarker:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLocAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareAddress:Ljava/lang/String;

    .line 476
    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareLocation:Lcom/google/android/maps/GeoPoint;

    .line 477
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 174
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 175
    const v1, 0x7f080359

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 176
    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    new-instance v2, Lcom/liquable/nemo/map/LocationPickerActivity$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/map/LocationPickerActivity$2;-><init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 192
    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 193
    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    const v2, 0x7f0d033e

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/map/LocationPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 195
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 200
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressFromLocationTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressFromLocationTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getFromLocationNameTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->getFromLocationNameTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 206
    :cond_1
    invoke-super {p0}, Lcom/liquable/nemo/map/BaseMapActivity;->onDestroy()V

    .line 207
    return-void
.end method

.method protected onMapActivityCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d00e8

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 212
    const v3, 0x7f030036

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/LocationPickerActivity;->setContentView(I)V

    .line 214
    new-instance v3, Lcom/google/android/maps/MapView;

    invoke-static {}, Lcom/liquable/nemo/map/LocationHelper;->getGoogleMapsV1ApiKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 215
    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 216
    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 217
    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/MapView;->setEnabled(Z)V

    .line 218
    const v3, 0x7f0800e4

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 219
    .local v1, "mapLayout":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    const/4 v4, 0x0

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapController:Lcom/google/android/maps/MapController;

    .line 223
    new-instance v3, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v4, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-direct {v3, p0, v4}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;

    .line 224
    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const v3, 0x7f0800e5

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLocMarker:Landroid/view/View;

    .line 227
    const v3, 0x7f0800e6

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLocAddress:Landroid/widget/TextView;

    .line 228
    const v3, 0x7f0800e2

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->shareMapButtons:Landroid/view/View;

    .line 229
    const v3, 0x7f0800e7

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/map/LocationPickerActivity$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/map/LocationPickerActivity$3;-><init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const-string/jumbo v3, "location"

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/LocationPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->locationManager:Landroid/location/LocationManager;

    .line 242
    new-instance v3, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->geoCoder:Landroid/location/Geocoder;

    .line 244
    invoke-direct {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->getLastLocation()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 246
    .local v0, "lastKnownLocation":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/location/Location;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapController:Lcom/google/android/maps/MapController;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 248
    iget-object v4, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    invoke-static {v3}, Lcom/liquable/nemo/map/LocationHelper;->locationToGeoPoint(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 251
    :cond_0
    const v3, 0x7f0800e3

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 252
    .local v2, "shareLocationBtn":Landroid/widget/Button;
    new-instance v3, Lcom/liquable/nemo/map/LocationPickerActivity$4;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/map/LocationPickerActivity$4;-><init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-direct {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->switchToMoveMode()V

    .line 259
    return-void
.end method

.method protected onMapActivityResume()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->isRunning:Z

    .line 264
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 265
    invoke-direct {p0}, Lcom/liquable/nemo/map/LocationPickerActivity;->showMyLocation()V

    .line 266
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->isRunning:Z

    .line 289
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 290
    invoke-super {p0}, Lcom/liquable/nemo/map/BaseMapActivity;->onPause()V

    .line 291
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getLatitudeSpan()I

    move-result v1

    iget-object v2, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getLongitudeSpan()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->searchLocation(Lcom/google/android/maps/GeoPoint;IILjava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/NemoUIs;->hideKeyboard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 302
    const/4 v0, 0x0

    return v0
.end method
