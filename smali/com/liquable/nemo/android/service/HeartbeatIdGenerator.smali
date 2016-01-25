.class public Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;
.super Ljava/lang/Object;
.source "HeartbeatIdGenerator.java"


# instance fields
.field private hintNetworkUnstableId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->hintNetworkUnstableId:I

    return-void
.end method


# virtual methods
.method public generateId(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isEmergencyCheck"    # Z

    .prologue
    .line 9
    if-nez p1, :cond_0

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_0
    return-object v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->hintNetworkUnstableId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->hintNetworkUnstableId:I

    .line 13
    iget v0, p0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->hintNetworkUnstableId:I

    rem-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->hintNetworkUnstableId:I

    .line 14
    iget v0, p0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->hintNetworkUnstableId:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->hintNetworkUnstableId:I

    .line 15
    iget v0, p0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->hintNetworkUnstableId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->hintNetworkUnstableId:I

    goto :goto_1
.end method

.method public isEmergencyCheck(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v4, 0x5

    new-array v2, v4, [I

    .line 20
    .local v2, "position":[I
    const/4 v1, 0x1

    .line 21
    .local v1, "lastPosition":I
    const/4 v3, 0x0

    .line 23
    .local v3, "startPosition":I
    const/4 v0, 0x0

    .line 24
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    if-lez v1, :cond_0

    .line 25
    const-string/jumbo v4, "-"

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v0

    .line 26
    aget v1, v2, v0

    .line 27
    aget v4, v2, v0

    add-int/lit8 v3, v4, 0x1

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    array-length v4, v2

    if-ne v0, v4, :cond_1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 32
    :cond_1
    const/4 v4, 0x1

    .line 34
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
