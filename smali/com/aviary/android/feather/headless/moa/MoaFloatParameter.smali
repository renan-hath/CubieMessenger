.class public Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;
.super Lcom/aviary/android/feather/headless/moa/MoaParameter;
.source "MoaFloatParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/headless/moa/MoaParameter",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;->setValue(Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;->setValue(Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 37
    new-instance v1, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;

    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v0}, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;-><init>(F)V

    return-object v1
.end method

.method public encode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;->value:Ljava/lang/Object;

    return-object v0
.end method
