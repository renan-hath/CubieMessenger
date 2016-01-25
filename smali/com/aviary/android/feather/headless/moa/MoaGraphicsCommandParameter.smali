.class public Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;
.super Lcom/aviary/android/feather/headless/moa/MoaParameter;
.source "MoaGraphicsCommandParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/headless/moa/MoaParameter",
        "<[F>;"
    }
.end annotation


# static fields
.field static final formatter:Ljava/text/DecimalFormat;

.field static final symbols:Ljava/text/DecimalFormatSymbols;


# instance fields
.field private commandType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 24
    sget-object v0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->symbols:Ljava/text/DecimalFormatSymbols;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 25
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "##.#####"

    sget-object v2, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->formatter:Ljava/text/DecimalFormat;

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->init(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->init(I)V

    .line 34
    invoke-virtual {p0, p2, p3}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->setPoint(FF)V

    .line 35
    return-void
.end method

.method public constructor <init>(IFFFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "x1"    # F
    .param p5, "y1"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaParameter;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->init(I)V

    .line 39
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->setPoint(FFFF)V

    .line 40
    return-void
.end method

.method private init(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 63
    :goto_0
    iput p1, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->commandType:I

    .line 64
    return-void

    .line 51
    :pswitch_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    goto :goto_0

    .line 59
    :pswitch_2
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    iget v1, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->commandType:I

    .line 110
    .local v1, "type":I
    new-instance v0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;-><init>(I)V

    .line 111
    .local v0, "result":Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;
    iget-object v3, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    iget-object v4, v0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    check-cast v2, [F

    array-length v2, v2

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    return-object v0
.end method

.method public encode()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 89
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v3, "object":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 93
    .local v0, "array":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v4, "c"

    iget v5, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->commandType:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    check-cast v4, [F

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 100
    const-string/jumbo v4, "p"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .end local v2    # "i":I
    :goto_1
    return-object v3

    .line 97
    .restart local v2    # "i":I
    :cond_0
    sget-object v5, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->formatter:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    check-cast v4, [F

    aget v4, v4, v2

    float-to-double v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public setPoint(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 68
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 69
    return-void
.end method

.method public setPoint(FFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 73
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 74
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 75
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;->value:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 76
    return-void
.end method
