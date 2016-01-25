.class public Lcom/aviary/android/feather/headless/gl/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# static fields
.field private static mGlEsVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, -0x1

    sput v0, Lcom/aviary/android/feather/headless/gl/GLUtils;->mGlEsVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlEsEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {}, Lcom/aviary/android/feather/headless/gl/GLUtils;->n_getOpenGLEnabled()Z

    move-result v0

    return v0
.end method

.method public static getGlEsVersion(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget v2, Lcom/aviary/android/feather/headless/gl/GLUtils;->mGlEsVersion:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 19
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 20
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 21
    .local v1, "configuration":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    sput v2, Lcom/aviary/android/feather/headless/gl/GLUtils;->mGlEsVersion:I

    .line 23
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "configuration":Landroid/content/pm/ConfigurationInfo;
    :cond_0
    sget v2, Lcom/aviary/android/feather/headless/gl/GLUtils;->mGlEsVersion:I

    return v2
.end method

.method public static native n_getOpenGLEnabled()Z
.end method
