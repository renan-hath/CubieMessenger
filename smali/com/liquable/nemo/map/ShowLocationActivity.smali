.class public Lcom/liquable/nemo/map/ShowLocationActivity;
.super Lcom/liquable/nemo/map/BaseMapActivity;
.source "ShowLocationActivity.java"


# instance fields
.field private location:Lcom/liquable/nemo/map/SharableLocation;

.field private myLoc:Lcom/google/android/maps/MyLocationOverlay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/liquable/nemo/map/BaseMapActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/liquable/nemo/map/ShowLocationActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 24
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f000e

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 25
    const/4 v1, 0x1

    return v1
.end method

.method protected onMapActivityCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 30
    invoke-virtual {p0}, Lcom/liquable/nemo/map/ShowLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/map/SharableLocation;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/map/SharableLocation;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->location:Lcom/liquable/nemo/map/SharableLocation;

    .line 31
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->location:Lcom/liquable/nemo/map/SharableLocation;

    if-nez v3, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/liquable/nemo/map/ShowLocationActivity;->finish()V

    .line 60
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/map/ShowLocationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d0546

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 37
    const v3, 0x7f030044

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/ShowLocationActivity;->setContentView(I)V

    .line 39
    new-instance v3, Lcom/google/android/maps/MapView;

    invoke-static {}, Lcom/liquable/nemo/map/LocationHelper;->getGoogleMapsV1ApiKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 40
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 41
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 42
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/MapView;->setEnabled(Z)V

    .line 43
    const v3, 0x7f0800e4

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/ShowLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 44
    .local v2, "mapLayout":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapView:Lcom/google/android/maps/MapView;

    const/4 v4, 0x0

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapController:Lcom/google/android/maps/MapController;

    .line 48
    const v3, 0x7f08010c

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/map/ShowLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, "addressTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->location:Lcom/liquable/nemo/map/SharableLocation;

    invoke-virtual {v3}, Lcom/liquable/nemo/map/SharableLocation;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapController:Lcom/google/android/maps/MapController;

    iget-object v4, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->location:Lcom/liquable/nemo/map/SharableLocation;

    invoke-virtual {v4}, Lcom/liquable/nemo/map/SharableLocation;->getCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 52
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapController:Lcom/google/android/maps/MapController;

    iget-object v4, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->location:Lcom/liquable/nemo/map/SharableLocation;

    invoke-virtual {v4}, Lcom/liquable/nemo/map/SharableLocation;->getZoom()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 54
    new-instance v1, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;

    invoke-virtual {p0}, Lcom/liquable/nemo/map/ShowLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020497

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .local v1, "itemizedOverlay":Lcom/liquable/nemo/map/ItemizedOverlayWithListener;
    new-instance v3, Lcom/google/android/maps/OverlayItem;

    iget-object v4, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->location:Lcom/liquable/nemo/map/SharableLocation;

    invoke-virtual {v4}, Lcom/liquable/nemo/map/SharableLocation;->getCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->location:Lcom/liquable/nemo/map/SharableLocation;

    invoke-virtual {v5}, Lcom/liquable/nemo/map/SharableLocation;->getAddress()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/liquable/nemo/map/ItemizedOverlayWithListener;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 56
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v3, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v4, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-direct {v3, p0, v4}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;

    .line 59
    iget-object v3, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onMapActivityResume()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 65
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 69
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lcom/liquable/nemo/map/BaseMapActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 71
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->location:Lcom/liquable/nemo/map/SharableLocation;

    invoke-virtual {v2}, Lcom/liquable/nemo/map/SharableLocation;->toUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    .local v0, "sharingIntent":Landroid/content/Intent;
    const v1, 0x7f0d048d

    .line 73
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/map/ShowLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/map/ShowLocationActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x7f08037a
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/map/ShowLocationActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 84
    invoke-super {p0}, Lcom/liquable/nemo/map/BaseMapActivity;->onPause()V

    .line 85
    return-void
.end method
