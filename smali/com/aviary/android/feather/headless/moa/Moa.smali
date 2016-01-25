.class public Lcom/aviary/android/feather/headless/moa/Moa;
.super Ljava/lang/Object;
.source "Moa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;
    }
.end annotation


# static fields
.field public static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/headless/moa/Moa;->mLock:Ljava/lang/Object;

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 183
    const-string/jumbo v0, "cutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "aviary_moalite"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v0, "aviary_native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyActions(Lcom/aviary/android/feather/headless/moa/MoaResult;)V
    .locals 2
    .param p0, "output"    # Lcom/aviary/android/feather/headless/moa/MoaResult;

    .prologue
    .line 132
    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    invoke-static {p0}, Lcom/aviary/android/feather/headless/moa/Moa;->n_applyActions(Lcom/aviary/android/feather/headless/moa/MoaResult;)V

    .line 132
    monitor-exit v1

    .line 135
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCpuBuild()Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa;->n_getCpuBuild()I

    move-result v0

    .line 178
    .local v0, "value":I
    invoke-static {v0}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->parseInt(I)Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    move-result-object v1

    return-object v1
.end method

.method public static getEnterpriseVersion()Z
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa;->n_enterpriseVersion()Z

    move-result v0

    return v0
.end method

.method public static getProclistVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa;->n_getProclistVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa;->n_getVersion()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "sourceDir"    # Ljava/lang/String;
    .param p4, "androidVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aviary/android/feather/headless/AviaryInitializationException;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v2, Lcom/aviary/android/feather/headless/moa/Moa;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_0
    invoke-static {p0, p3, p1, p2, p4}, Lcom/aviary/android/feather/headless/moa/Moa;->n_init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "code":I
    if-lez v0, :cond_0

    .line 84
    invoke-static {v0}, Lcom/aviary/android/feather/headless/AviaryInitializationException;->fromInt(I)Lcom/aviary/android/feather/headless/AviaryInitializationException;

    move-result-object v1

    throw v1

    .line 81
    .end local v0    # "code":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "code":I
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    return-void
.end method

.method static native n_applyActions(Lcom/aviary/android/feather/headless/moa/MoaResult;)V
.end method

.method static native n_cpuIsArmv7()Z
.end method

.method static native n_enterpriseVersion()Z
.end method

.method static native n_getActions()[Ljava/lang/String;
.end method

.method static native n_getCpuBuild()I
.end method

.method static native n_getCpuFamily()I
.end method

.method static native n_getEffects()[Ljava/lang/String;
.end method

.method static native n_getProclistVersion()Ljava/lang/String;
.end method

.method static native n_getVersion()I
.end method

.method static native n_init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method static native n_notifyPixelsChanged(Landroid/graphics/Bitmap;)V
.end method

.method static native n_premiumVersion()Z
.end method

.method static native n_setid(Ljava/lang/String;)V
.end method

.method public static notifyPixelsChanged(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/aviary/android/feather/headless/moa/Moa;->n_notifyPixelsChanged(Landroid/graphics/Bitmap;)V

    .line 72
    return-void
.end method
