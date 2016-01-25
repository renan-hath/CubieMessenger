.class public Lcom/aviary/android/feather/library/services/ConfigService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "ConfigService.java"


# instance fields
.field mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 21
    invoke-interface {p1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/ConfigService;->mResources:Landroid/content/res/Resources;

    .line 22
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ConfigService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ConfigService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(I)I
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ConfigService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getIntArray(I)[I
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ConfigService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getInteger(I)I
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ConfigService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSizeArray(I)[I
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 45
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/ConfigService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .local v0, "density":F
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/services/ConfigService;->getIntArray(I)[I

    move-result-object v2

    .line 47
    .local v2, "values":[I
    if-eqz v2, :cond_0

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 52
    .end local v1    # "i":I
    :cond_0
    return-object v2

    .line 49
    .restart local v1    # "i":I
    :cond_1
    aget v3, v2, v1

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v2, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ConfigService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ConfigService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
