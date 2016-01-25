.class public Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
.super Ljava/lang/Object;
.source "ExifInterfaceWrapper.java"


# static fields
.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static sGpsDateFormatter:Ljava/text/SimpleDateFormat;

.field private static sGpsTimeFormatter:Ljava/text/SimpleDateFormat;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 352
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->sLock:Ljava/lang/Object;

    .line 355
    const-string/jumbo v2, "aviary_exif"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 357
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 358
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy:MM:dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->sGpsDateFormatter:Ljava/text/SimpleDateFormat;

    .line 359
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "H/1,m/1,s/1"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->sGpsTimeFormatter:Ljava/text/SimpleDateFormat;

    .line 361
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 362
    .local v0, "tz":Ljava/util/TimeZone;
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 365
    .local v1, "utc":Ljava/util/TimeZone;
    sget-object v2, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 366
    sget-object v2, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->sGpsTimeFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 367
    sget-object v2, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->sGpsDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 368
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mFilename:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->loadAttributes()V

    .line 376
    return-void
.end method

.method private native appendThumbnailNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native commitChangesNative(Ljava/lang/String;)V
.end method

.method private native getAttributesNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getThumbnailNative(Ljava/lang/String;)[B
.end method

.method private loadAttributes()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    .line 536
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    .line 539
    sget-object v10, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 540
    :try_start_0
    iget-object v9, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->getAttributesNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "attrStr":Ljava/lang/String;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 545
    .local v8, "ptr":I
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 547
    .local v4, "count":I
    add-int/lit8 v8, v8, 0x1

    .line 549
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v4, :cond_0

    .line 570
    return-void

    .line 539
    .end local v2    # "attrStr":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v6    # "i":I
    .end local v8    # "ptr":I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 551
    .restart local v2    # "attrStr":Ljava/lang/String;
    .restart local v4    # "count":I
    .restart local v6    # "i":I
    .restart local v8    # "ptr":I
    :cond_0
    const/16 v9, 0x3d

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 552
    .local v5, "equalPos":I
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "attrName":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    .line 556
    invoke-virtual {v2, v11, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 557
    .local v7, "lenPos":I
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 558
    .local v0, "attrLen":I
    add-int/lit8 v8, v7, 0x1

    .line 561
    add-int v9, v8, v0

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, "attrValue":Ljava/lang/String;
    add-int/2addr v8, v0

    .line 564
    const-string/jumbo v9, "hasThumbnail"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 565
    const-string/jumbo v9, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mHasThumbnail:Z

    .line 549
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 567
    :cond_1
    iget-object v9, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private native saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public copyFrom(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    .line 484
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 492
    return-void

    .line 484
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public copyTo(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 471
    iget-object v2, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 477
    return-void

    .line 471
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 412
    iget-object v2, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 413
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 417
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 415
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getOrientation()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 504
    const-string/jumbo v2, "Orientation"

    invoke-virtual {p0, v2, v3}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 505
    .local v0, "orientation":I
    if-eq v0, v3, :cond_0

    .line 506
    packed-switch v0, :pswitch_data_0

    .line 520
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 511
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 513
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 515
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mHasThumbnail:Z

    return v0
.end method

.method public saveAttributes()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    const/4 v9, 0x3

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "ImageWidth"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "ImageLength"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "hasThumbnail"

    aput-object v10, v6, v9

    .line 584
    .local v6, "t":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 586
    .local v0, "TAGS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 589
    .local v5, "size":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 595
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v9, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 609
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "s":Ljava/lang/String;
    sget-object v10, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 612
    :try_start_0
    iget-object v9, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v9, v3}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v9, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->commitChangesNative(Ljava/lang/String;)V

    .line 611
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    return-void

    .line 589
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 590
    .local v7, "tag":Ljava/lang/String;
    iget-object v10, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 591
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 596
    .end local v7    # "tag":Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 597
    .local v1, "iter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 599
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 603
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 604
    .local v8, "val":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 611
    .end local v1    # "iter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 383
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "hasThumbnail = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->hasThumbnail()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 385
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
