.class Lcom/liquable/nemo/map/LocationPickerActivity$3;
.super Ljava/lang/Object;
.source "LocationPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/map/LocationPickerActivity;->onMapActivityCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/map/LocationPickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$3;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$3;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->myLoc:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$400(Lcom/liquable/nemo/map/LocationPickerActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 233
    .local v0, "myLocation":Lcom/google/android/maps/GeoPoint;
    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$3;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    iget-object v1, v1, Lcom/liquable/nemo/map/LocationPickerActivity;->mapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0
.end method
