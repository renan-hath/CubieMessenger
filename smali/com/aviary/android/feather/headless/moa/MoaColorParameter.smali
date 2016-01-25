.class public Lcom/aviary/android/feather/headless/moa/MoaColorParameter;
.super Lcom/aviary/android/feather/headless/moa/MoaParameter;
.source "MoaColorParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/headless/moa/MoaParameter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;->setValue(Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 25
    new-instance v1, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;

    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;-><init>(Ljava/lang/Integer;)V

    return-object v1
.end method

.method public encode()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/headless/utils/StringUtils;->padRight(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
