.class public Lcom/aviary/android/feather/library/graphics/CircleF;
.super Ljava/lang/Object;
.source "CircleF.java"

# interfaces
.implements Lcom/aviary/android/feather/library/graphics/IGeom;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aviary/android/feather/library/graphics/CircleF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected radius:F

.field protected x:F

.field protected y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/aviary/android/feather/library/graphics/CircleF$1;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/graphics/CircleF$1;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/graphics/CircleF;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 239
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0, v0, v0}, Lcom/aviary/android/feather/library/graphics/CircleF;-><init>(FFF)V

    .line 20
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "centerx"    # F
    .param p2, "centery"    # F
    .param p3, "r"    # F

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p3, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->radius:F

    .line 24
    iput p1, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->x:F

    .line 25
    iput p2, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->y:F

    .line 26
    return-void
.end method


# virtual methods
.method public centerX()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->x:F

    return v0
.end method

.method public centerY()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->y:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    if-ne p0, p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 222
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

    .line 224
    check-cast v0, Lcom/aviary/android/feather/library/graphics/CircleF;

    .line 225
    .local v0, "r":Lcom/aviary/android/feather/library/graphics/CircleF;
    iget v3, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->x:F

    iget v4, v0, Lcom/aviary/android/feather/library/graphics/CircleF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->y:F

    iget v4, v0, Lcom/aviary/android/feather/library/graphics/CircleF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->radius:F

    iget v4, v0, Lcom/aviary/android/feather/library/graphics/CircleF;->radius:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->radius:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x7

    .line 213
    .local v0, "hash":I
    iget v1, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x1f1

    .line 214
    mul-int/lit8 v1, v0, 0x47

    iget v2, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 215
    mul-int/lit8 v1, v0, 0x47

    iget v2, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->radius:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 216
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->x:F

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->y:F

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->radius:F

    .line 208
    return-void
.end method

.method public set(FFF)V
    .locals 0
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "r"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->x:F

    .line 30
    iput p2, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->y:F

    .line 31
    iput p3, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->radius:F

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CircleF("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 198
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 199
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 200
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/CircleF;->radius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    return-void
.end method
