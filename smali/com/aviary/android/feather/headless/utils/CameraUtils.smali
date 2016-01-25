.class public final Lcom/aviary/android/feather/headless/utils/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "cutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "aviary_moalite"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "aviary_native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native n_getLargeMp()I
.end method

.method private static native n_getMaxSize(I)I
.end method

.method private static native n_getMaximumMp()I
.end method

.method private static native n_getMediumMp()I
.end method

.method private static native n_getSmallMp()I
.end method
