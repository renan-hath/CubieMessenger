.class public Lcom/aviary/android/feather/async_tasks/ExifTask;
.super Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;
.source "ExifTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable",
        "<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 14
    if-nez p2, :cond_0

    .line 15
    const/4 v1, 0x0

    .line 27
    :goto_0
    return-object v1

    .line 18
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v1, "result":Landroid/os/Bundle;
    :try_start_0
    new-instance v0, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;

    invoke-direct {v0, p2}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "exif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->copyTo(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    .end local v0    # "exif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    :catch_0
    move-exception v2

    .line 25
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/async_tasks/ExifTask;->call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
