.class public Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;
.super Ljava/lang/Object;
.source "NativeFilterProxy.java"


# static fields
.field private static mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;->mInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aviary/android/feather/headless/AviaryInitializationException;
        }
    .end annotation

    .prologue
    .line 44
    const-class v9, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 46
    .local v4, "t1":J
    sget-boolean v8, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;->mInitialized:Z

    if-nez v8, :cond_0

    .line 48
    const-string/jumbo v3, ""

    .line 49
    .local v3, "sourceDir":Ljava/lang/String;
    const-string/jumbo v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .local v2, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 53
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 54
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    :try_start_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, v2, p1, v3, v8}, Lcom/aviary/android/feather/headless/moa/Moa;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 63
    .local v6, "t2":J
    const-string/jumbo v8, "NativeFilterProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "init total time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v11, v6, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v8, 0x1

    sput-boolean v8, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;->mInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "sourceDir":Ljava/lang/String;
    .end local v6    # "t2":J
    :cond_0
    monitor-exit v9

    return-void

    .line 55
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "sourceDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 44
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "sourceDir":Ljava/lang/String;
    .end local v4    # "t1":J
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static prepareActions(Lcom/aviary/android/feather/headless/moa/MoaActionList;Landroid/graphics/Bitmap;)Lcom/aviary/android/feather/headless/moa/MoaResult;
    .locals 5
    .param p0, "actionList"    # Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->metadata()Lcom/aviary/android/feather/headless/moa/MoaMetadata;

    move-result-object v2

    .line 84
    .local v2, "metadata":Lcom/aviary/android/feather/headless/moa/MoaMetadata;
    invoke-virtual {v2, v4, v4}, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->setImageSize(II)V

    .line 85
    invoke-virtual {v2, v4}, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->setTransformInputBitmap(Z)V

    .line 87
    const/4 v1, 0x0

    .line 90
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v2}, Lcom/aviary/android/feather/headless/moa/JSONWriter;->encode(Lcom/aviary/android/feather/headless/moa/MoaActionList;Lcom/aviary/android/feather/headless/moa/MoaMetadata;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    new-instance v3, Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-direct {v3}, Lcom/aviary/android/feather/headless/moa/MoaResult;-><init>()V

    .line 98
    .local v3, "result":Lcom/aviary/android/feather/headless/moa/MoaResult;
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/aviary/android/feather/headless/moa/MoaResult;->outputBitmap:Landroid/graphics/Bitmap;

    .line 99
    iput-object v1, v3, Lcom/aviary/android/feather/headless/moa/MoaResult;->inputString:Ljava/lang/String;

    .line 100
    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/aviary/android/feather/headless/moa/MoaResult;->outputString:Ljava/lang/String;

    .line 101
    iput-object p1, v3, Lcom/aviary/android/feather/headless/moa/MoaResult;->inputBitmap:Landroid/graphics/Bitmap;

    .line 102
    return-object v3

    .line 91
    .end local v3    # "result":Lcom/aviary/android/feather/headless/moa/MoaResult;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 93
    throw v0
.end method

.method public static prepareActions(Lcom/aviary/android/feather/headless/moa/MoaActionList;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;
    .locals 5
    .param p0, "actionList"    # Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .param p2, "output"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->metadata()Lcom/aviary/android/feather/headless/moa/MoaMetadata;

    move-result-object v2

    .line 123
    .local v2, "metadata":Lcom/aviary/android/feather/headless/moa/MoaMetadata;
    invoke-virtual {v2, p3, p4}, Lcom/aviary/android/feather/headless/moa/MoaMetadata;->setImageSize(II)V

    .line 125
    const/4 v1, 0x0

    .line 128
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v2}, Lcom/aviary/android/feather/headless/moa/JSONWriter;->encode(Lcom/aviary/android/feather/headless/moa/MoaActionList;Lcom/aviary/android/feather/headless/moa/MoaMetadata;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    new-instance v3, Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-direct {v3}, Lcom/aviary/android/feather/headless/moa/MoaResult;-><init>()V

    .line 135
    .local v3, "result":Lcom/aviary/android/feather/headless/moa/MoaResult;
    if-eqz p2, :cond_0

    iput-object p2, v3, Lcom/aviary/android/feather/headless/moa/MoaResult;->outputBitmap:Landroid/graphics/Bitmap;

    .line 137
    :cond_0
    iput-object v1, v3, Lcom/aviary/android/feather/headless/moa/MoaResult;->inputString:Ljava/lang/String;

    .line 138
    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/aviary/android/feather/headless/moa/MoaResult;->outputString:Ljava/lang/String;

    .line 139
    iput-object p1, v3, Lcom/aviary/android/feather/headless/moa/MoaResult;->inputBitmap:Landroid/graphics/Bitmap;

    .line 140
    return-object v3

    .line 129
    .end local v3    # "result":Lcom/aviary/android/feather/headless/moa/MoaResult;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    throw v0
.end method
