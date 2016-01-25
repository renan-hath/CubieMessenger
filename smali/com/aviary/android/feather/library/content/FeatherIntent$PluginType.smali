.class public final Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;
.super Ljava/lang/Object;
.source "FeatherIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/content/FeatherIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginType"
.end annotation


# direct methods
.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 69
    invoke-static {p0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isFilter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "filters"

    .line 78
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isSticker(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string/jumbo v0, "stickers"

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isBorder(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string/jumbo v0, "borders"

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isTool(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    const-string/jumbo v0, "tools"

    goto :goto_0

    .line 78
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBorder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 61
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->typeof(II)Z

    move-result v0

    return v0
.end method

.method public static isFilter(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->typeof(II)Z

    move-result v0

    return v0
.end method

.method public static isSticker(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->typeof(II)Z

    move-result v0

    return v0
.end method

.method public static isTool(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 57
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->typeof(II)Z

    move-result v0

    return v0
.end method

.method public static isTypeOf(II)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "checkType"    # I

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->typeof(II)Z

    move-result v0

    return v0
.end method

.method static typeof(II)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "checkType"    # I

    .prologue
    .line 45
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
