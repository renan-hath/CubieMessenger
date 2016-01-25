.class public Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "NativeRangeFilter.java"

# interfaces
.implements Lcom/aviary/android/feather/headless/filters/INativeRangeFilter;


# instance fields
.field protected defaultParam:Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;

.field protected mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;-><init>(F)V

    iput-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;->defaultParam:Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;

    .line 12
    iput-object p2, p0, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;->mKey:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Float;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;->mKey:Ljava/lang/String;

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaFloatParameter;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 18
    return-void
.end method
