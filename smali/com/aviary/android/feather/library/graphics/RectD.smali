.class public Lcom/aviary/android/feather/library/graphics/RectD;
.super Ljava/lang/Object;
.source "RectD.java"

# interfaces
.implements Lcom/aviary/android/feather/library/graphics/IGeom;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aviary/android/feather/library/graphics/RectD;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 580
    new-instance v0, Lcom/aviary/android/feather/library/graphics/RectD$1;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/graphics/RectD$1;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/graphics/RectD;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 597
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "left"    # D
    .param p3, "top"    # D
    .param p5, "right"    # D
    .param p7, "bottom"    # D

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 47
    iput-wide p3, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 48
    iput-wide p5, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 49
    iput-wide p7, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/graphics/RectD;)V
    .locals 2
    .param p1, "r"    # Lcom/aviary/android/feather/library/graphics/RectD;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-wide v0, p1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 60
    iget-wide v0, p1, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 61
    iget-wide v0, p1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 62
    iget-wide v0, p1, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 63
    return-void
.end method


# virtual methods
.method public contains(Lcom/aviary/android/feather/library/graphics/RectD;)Z
    .locals 4
    .param p1, "r"    # Lcom/aviary/android/feather/library/graphics/RectD;

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-wide v2, p1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-wide v2, p1, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-wide v2, p1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-wide v2, p1, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/aviary/android/feather/library/graphics/RectD;

    .line 85
    .local v0, "r":Lcom/aviary/android/feather/library/graphics/RectD;
    iget-wide v3, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-wide v5, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-wide v5, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-wide v5, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-wide v5, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 90
    iget-wide v1, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v0

    .line 91
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 93
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 94
    return v0
.end method

.method public final height()D
    .locals 4

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public inset(DD)V
    .locals 2
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 287
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 288
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 289
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    sub-double/2addr v0, p3

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 290
    return-void
.end method

.method public offset(DD)V
    .locals 2
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 256
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 257
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 258
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 259
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 611
    return-void
.end method

.method public set(DDDD)V
    .locals 0
    .param p1, "left"    # D
    .param p3, "top"    # D
    .param p5, "right"    # D
    .param p7, "bottom"    # D

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 201
    iput-wide p3, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 202
    iput-wide p5, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 203
    iput-wide p7, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 204
    return-void
.end method

.method public set(Lcom/aviary/android/feather/library/graphics/RectD;)V
    .locals 2
    .param p1, "src"    # Lcom/aviary/android/feather/library/graphics/RectD;

    .prologue
    .line 226
    iget-wide v0, p1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 227
    iget-wide v0, p1, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 228
    iget-wide v0, p1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 229
    iget-wide v0, p1, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 230
    return-void
.end method

.method public sort()V
    .locals 6

    .prologue
    .line 548
    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-wide v4, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 549
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 550
    .local v0, "temp":D
    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iput-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 551
    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 553
    .end local v0    # "temp":D
    :cond_0
    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-wide v4, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 554
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 555
    .restart local v0    # "temp":D
    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iput-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 556
    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 558
    .end local v0    # "temp":D
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RectD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final width()D
    .locals 4

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-wide v2, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 574
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 575
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 576
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 577
    iget-wide v0, p0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 578
    return-void
.end method
