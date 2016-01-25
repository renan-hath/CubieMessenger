.class public Lcom/aviary/android/feather/headless/moa/MoaPointParameter;
.super Lcom/aviary/android/feather/headless/moa/MoaParameter;
.source "MoaPointParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/headless/moa/MoaParameter",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->init()V

    .line 16
    invoke-virtual {p0, v0, v0}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->setValue(FF)V

    .line 17
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->init()V

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->setValue(DD)V

    .line 27
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->init()V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->setValue(FF)V

    .line 32
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->value:Ljava/lang/Object;

    .line 21
    const-string/jumbo v0, "point"

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->type:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 66
    new-instance v1, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->value:Ljava/lang/Object;

    check-cast v0, [D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->value:Ljava/lang/Object;

    check-cast v0, [D

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(DD)V

    return-object v1
.end method

.method public encode()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 48
    .local v0, "array":Lorg/json/JSONArray;
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->value:Ljava/lang/Object;

    check-cast v1, [D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 49
    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->value:Ljava/lang/Object;

    check-cast v1, [D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setValue(DD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->value:Ljava/lang/Object;

    check-cast v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 41
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->value:Ljava/lang/Object;

    check-cast v0, [D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 42
    return-void
.end method

.method public setValue(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->value:Ljava/lang/Object;

    check-cast v0, [D

    const/4 v1, 0x0

    float-to-double v2, p1

    aput-wide v2, v0, v1

    .line 36
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->value:Ljava/lang/Object;

    check-cast v0, [D

    const/4 v1, 0x1

    float-to-double v2, p2

    aput-wide v2, v0, v1

    .line 37
    return-void
.end method
