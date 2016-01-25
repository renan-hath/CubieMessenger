.class Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;
.super Landroid/os/AsyncTask;
.source "AviarySystemReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackPackageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTALL_TIME_THRESHOLD:J


# instance fields
.field private contextRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private pname:Ljava/lang/String;

.field private purchasedPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 349
    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->INSTALL_TIME_THRESHOLD:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    .line 353
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->contextRef:Ljava/lang/ref/SoftReference;

    .line 354
    return-void
.end method

.method static synthetic access$2(Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;)Ljava/lang/ref/SoftReference;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->contextRef:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->purchasedPackageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 415
    iget-object v2, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->contextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 416
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 424
    :goto_0
    return-object v2

    .line 419
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->purchasedPackageName:Ljava/lang/String;

    .line 420
    iget-object v2, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->purchasedPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->trackPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 424
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x2

    .line 377
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 379
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 381
    :try_start_0
    invoke-static {}, Lcom/aviary/android/feather/library/tracking/Tracker;->close()Z

    .line 382
    invoke-static {}, Lcom/aviary/android/feather/library/tracking/Tracker;->upload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 391
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$1()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 393
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_2

    const-wide/16 v0, 0x32

    .line 395
    .local v0, "delayTime":J
    :goto_1
    const-string/jumbo v3, "system-receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "delayTime: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$1()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask$1;

    invoke-direct {v4, p0}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask$1;-><init>(Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    .end local v0    # "delayTime":J
    :cond_1
    return-void

    .line 383
    :catch_0
    move-exception v2

    .line 385
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 393
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    const-wide/16 v0, 0xdac

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 358
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 360
    iget-object v3, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->contextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 362
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 366
    :try_start_0
    invoke-static {v1}, Lit/sephiroth/android/library/ab/AB;->getInstance(Landroid/content/Context;)Lit/sephiroth/android/library/ab/AB;

    move-result-object v0

    .line 367
    .local v0, "ab_test":Lit/sephiroth/android/library/ab/AB;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/aviary/android/feather/library/MonitoredActivity;->getApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "3.0.0"

    invoke-static {v1, v3, v4, v5}, Lcom/aviary/android/feather/library/tracking/Tracker;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 368
    invoke-virtual {v0}, Lit/sephiroth/android/library/ab/AB;->getGroup()Lit/sephiroth/android/library/ab/AB$Group;

    move-result-object v3

    invoke-virtual {v3}, Lit/sephiroth/android/library/ab/AB$Group;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aviary/android/feather/library/tracking/Tracker;->setABGroup(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0    # "ab_test":Lit/sephiroth/android/library/ab/AB;
    :cond_0
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v2

    .line 370
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected trackPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "purchasedPkgName"    # Ljava/lang/String;
    .param p3, "assetType"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v3, Lcom/aviary/android/feather/library/services/SettingsFileManager;

    const-string/jumbo v17, ".global-settings"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Lcom/aviary/android/feather/library/services/SettingsFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 432
    .local v3, "globalManager":Lcom/aviary/android/feather/library/services/SettingsFileManager;
    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->loaded()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 433
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 434
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 435
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] do not continue with processing, the "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 436
    const-string/jumbo v19, " already exists"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 435
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->close()V

    .line 439
    const/16 v17, 0x1

    .line 549
    :goto_0
    return v17

    .line 442
    :cond_1
    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->close()V

    .line 445
    new-instance v5, Lcom/aviary/android/feather/library/services/SettingsFileManager;

    const-string/jumbo v17, ".temp-settings"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v5, v0, v1, v2}, Lcom/aviary/android/feather/library/services/SettingsFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 447
    .local v5, "manager":Lcom/aviary/android/feather/library/services/SettingsFileManager;
    invoke-virtual {v5}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->loaded()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 451
    .local v7, "myPackageName":Ljava/lang/String;
    # invokes: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->getParentPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, "parentPurchasedPkgName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "_package"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 454
    .local v10, "pkg":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "_package"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 456
    .local v8, "parentPkg":Ljava/lang/String;
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 457
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] checking on "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " on "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] parent name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] settings pkg: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] settings parentPkg: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    if-eqz v10, :cond_10

    if-eqz v8, :cond_10

    .line 464
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 466
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "_time"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 467
    .local v13, "time1":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "_time"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 470
    .local v15, "time2":J
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 471
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] time1: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] time2: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_4
    const/4 v4, 0x0

    .line 477
    .local v4, "isInitiatedByParent":Z
    cmp-long v17, v13, v15

    if-gez v17, :cond_6

    .line 478
    const/4 v4, 0x1

    .line 479
    move-wide v11, v15

    .line 484
    .local v11, "time":J
    :goto_1
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 487
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 489
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    cmp-long v17, v13, v15

    if-lez v17, :cond_7

    .line 490
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 491
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] initialized by parent: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_5
    const/16 v17, 0x4

    goto/16 :goto_0

    .line 481
    .end local v11    # "time":J
    :cond_6
    move-wide v11, v13

    .restart local v11    # "time":J
    goto :goto_1

    .line 494
    :cond_7
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    cmp-long v17, v15, v13

    if-lez v17, :cond_9

    .line 495
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 496
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] initialized by parent: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_8
    const/16 v17, 0x4

    goto/16 :goto_0

    .line 503
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v11

    sget-wide v19, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->INSTALL_TIME_THRESHOLD:J

    cmp-long v17, v17, v19

    if-gez v17, :cond_c

    .line 504
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 505
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] passed all tests!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_a
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 510
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v17, "assetType"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string/jumbo v17, "assetID"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-static {}, Lcom/aviary/android/feather/library/tracking/Tracker;->open()V

    .line 514
    const-string/jumbo v17, "Content: PurchaseCompleted"

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 517
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 519
    cmp-long v17, v13, v15

    if-lez v17, :cond_b

    .line 521
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "_package"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->remove(Ljava/lang/String;)V

    .line 522
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "_time"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->remove(Ljava/lang/String;)V

    .line 523
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "_package"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->remove(Ljava/lang/String;)V

    .line 524
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "_time"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->remove(Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->flush(Landroid/content/Context;)V

    .line 529
    :cond_b
    const/16 v17, 0x2

    goto/16 :goto_0

    .line 532
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 533
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] too much time passed!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_d
    invoke-virtual {v5}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->close()V

    .line 536
    const/16 v17, 0x3

    goto/16 :goto_0

    .line 539
    .end local v4    # "isInitiatedByParent":Z
    .end local v11    # "time":J
    .end local v13    # "time1":J
    .end local v15    # "time2":J
    :cond_e
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 540
    const-string/jumbo v17, "system-receiver"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->pname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] we didn\'t start the process..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_f
    invoke-virtual {v5}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->close()V

    .line 543
    const/16 v17, 0x4

    goto/16 :goto_0

    .line 547
    .end local v7    # "myPackageName":Ljava/lang/String;
    .end local v8    # "parentPkg":Ljava/lang/String;
    .end local v9    # "parentPurchasedPkgName":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_10
    invoke-virtual {v5}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->close()V

    .line 549
    const/16 v17, 0x5

    goto/16 :goto_0
.end method
