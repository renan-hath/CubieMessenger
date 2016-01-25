.class Lcom/liquable/nemo/map/LocationPickerActivity$6;
.super Landroid/os/AsyncTask;
.source "LocationPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/map/LocationPickerActivity;->searchLocation(Lcom/google/android/maps/GeoPoint;IILjava/lang/String;)V
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
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

.field final synthetic val$center:Lcom/google/android/maps/GeoPoint;

.field final synthetic val$input:Ljava/lang/String;

.field final synthetic val$latSpan:I

.field final synthetic val$lngSpan:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/map/LocationPickerActivity;Lcom/google/android/maps/GeoPoint;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/map/LocationPickerActivity;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    iput-object p2, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$center:Lcom/google/android/maps/GeoPoint;

    iput p3, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$latSpan:I

    iput p4, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$lngSpan:I

    iput-object p5, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$input:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 17
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const/4 v13, 0x0

    .line 333
    .local v13, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$center:Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$latSpan:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$lngSpan:I

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->getBoundingBox(Lcom/google/android/maps/GeoPoint;II)[D
    invoke-static {v1, v2, v3, v4}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$600(Lcom/liquable/nemo/map/LocationPickerActivity;Lcom/google/android/maps/GeoPoint;II)[D

    move-result-object v14

    .line 334
    .local v14, "boundingBox":[D
    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFromLocationName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$input:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " within bounding box:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v14, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v14, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-wide v3, v14, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-wide v3, v14, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->geoCoder:Landroid/location/Geocoder;
    invoke-static {v1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$700(Lcom/liquable/nemo/map/LocationPickerActivity;)Landroid/location/Geocoder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$input:Ljava/lang/String;

    const/16 v3, 0xa

    const/4 v4, 0x0

    aget-wide v4, v14, v4

    const/4 v6, 0x1

    aget-wide v6, v14, v6

    const/4 v8, 0x2

    aget-wide v8, v14, v8

    const/4 v10, 0x3

    aget-wide v10, v14, v10

    invoke-virtual/range {v1 .. v11}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;

    move-result-object v13

    .line 349
    const/16 v16, 0x0

    .line 350
    .local v16, "resultAvailableWithinBoundingBox":Z
    if-eqz v13, :cond_1

    .line 351
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Address;

    .line 352
    .local v12, "address":Landroid/location/Address;
    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->isAddressWithinBoundingBox(Landroid/location/Address;[D)Z
    invoke-static {v12, v14}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$800(Landroid/location/Address;[D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const/16 v16, 0x1

    .line 359
    .end local v12    # "address":Landroid/location/Address;
    :cond_1
    if-nez v16, :cond_2

    .line 360
    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFromLocationName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$input:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # getter for: Lcom/liquable/nemo/map/LocationPickerActivity;->geoCoder:Landroid/location/Geocoder;
    invoke-static {v1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$700(Lcom/liquable/nemo/map/LocationPickerActivity;)Landroid/location/Geocoder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->val$input:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 366
    .end local v14    # "boundingBox":[D
    .end local v16    # "resultAvailableWithinBoundingBox":Z
    :cond_2
    :goto_0
    return-object v13

    .line 363
    :catch_0
    move-exception v15

    .line 364
    .local v15, "e":Ljava/io/IOException;
    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "geoCoder.getFromLocationName"

    invoke-virtual {v1, v2, v15}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 328
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity$6;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
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
    .line 371
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/map/LocationPickerActivity;->removeDialog(I)V

    .line 373
    if-nez p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    const v1, 0x7f0d02ca

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 380
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    const v1, 0x7f0d033d

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->showSeachResults(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$900(Lcom/liquable/nemo/map/LocationPickerActivity;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    # invokes: Lcom/liquable/nemo/map/LocationPickerActivity;->clearSearch()V
    invoke-static {v0}, Lcom/liquable/nemo/map/LocationPickerActivity;->access$1000(Lcom/liquable/nemo/map/LocationPickerActivity;)V

    .line 385
    iget-object v0, p0, Lcom/liquable/nemo/map/LocationPickerActivity$6;->this$0:Lcom/liquable/nemo/map/LocationPickerActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/map/LocationPickerActivity;->showDialog(I)V

    .line 386
    return-void
.end method
