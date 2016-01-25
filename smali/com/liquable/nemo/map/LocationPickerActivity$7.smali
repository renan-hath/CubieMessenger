.class Lcom/liquable/nemo/map/LocationPickerActivity$7;
.super Landroid/os/AsyncTask;
.source "LocationPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/map/LocationPickerActivity;->showMyLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/map/LocationPickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/map/LocationPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/location/Address;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    iget-object v1, v1, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/map/LocationHelper;->geoPointToLocation(Lcom/google/android/maps/GeoPoint;)Landroid/location/Location;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;
    invoke-static {v0, v1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1100(Lcom/liquable/nemo/map/LocationPickerActivity;Landroid/location/Location;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity$7;->doInBackground([Ljava/lang/Void;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/location/Address;)V
    .locals 3
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->mode:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$000(Lcom/liquable/nemo/map/LocationPickerActivity;)Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->MOVE:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    if-eq v0, v1, :cond_0

    .line 423
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->myLocAddress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1200(Lcom/liquable/nemo/map/LocationPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    if-nez p1, :cond_1

    .line 418
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->myLocAddress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1200(Lcom/liquable/nemo/map/LocationPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    const v2, 0x7f0d033f

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/map/LocationPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->myLocAddress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1200(Lcom/liquable/nemo/map/LocationPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressString(Landroid/location/Address;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1300(Lcom/liquable/nemo/map/LocationPickerActivity;Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->getAddressString(Landroid/location/Address;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1300(Lcom/liquable/nemo/map/LocationPickerActivity;Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/liquable/nemo/map/LocationPickerActivity;->shareAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1402(Lcom/liquable/nemo/map/LocationPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    check-cast p1, Landroid/location/Address;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity$7;->onPostExecute(Landroid/location/Address;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/map/LocationPickerActivity;->shareAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1402(Lcom/liquable/nemo/map/LocationPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    iget-object v1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    iget-object v1, v1, Lcom/liquable/nemo/map/LocationPickerActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    # setter for: Lcom/liquable/nemo/map/LocationPickerActivity;->shareLocation:Lcom/google/android/maps/GeoPoint;
    invoke-static {v0, v1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1502(Lcom/liquable/nemo/map/LocationPickerActivity;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;

    .line 429
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$7;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->myLocAddress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1200(Lcom/liquable/nemo/map/LocationPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    return-void
.end method
