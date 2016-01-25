.class public Lcom/aviary/android/feather/headless/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final SALT:[B

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 13
    const-string/jumbo v6, "qwertyuiopasdfghjklzxcvbnmqwsadf"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    sput-object v6, Lcom/aviary/android/feather/headless/utils/StringUtils;->SALT:[B

    .line 16
    new-array v6, v8, [J

    sput-object v6, Lcom/aviary/android/feather/headless/utils/StringUtils;->sCrcTable:[J

    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v8, :cond_0

    .line 29
    return-void

    .line 22
    :cond_0
    int-to-long v2, v0

    .line 23
    .local v2, "part":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v6, 0x8

    if-lt v1, v6, :cond_1

    .line 27
    sget-object v6, Lcom/aviary/android/feather/headless/utils/StringUtils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const-wide v4, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    .line 25
    .local v4, "x":J
    :goto_2
    const/4 v6, 0x1

    shr-long v6, v2, v6

    xor-long v2, v6, v4

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    .end local v4    # "x":J
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method public static final crc64Long([B)J
    .locals 8
    .param p0, "buffer"    # [B

    .prologue
    .line 128
    const-wide/16 v0, -0x1

    .line 129
    .local v0, "crc":J
    const/4 v2, 0x0

    .local v2, "k":I
    array-length v3, p0

    .local v3, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 132
    return-wide v0

    .line 130
    :cond_0
    sget-object v4, Lcom/aviary/android/feather/headless/utils/StringUtils;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 105
    .local v3, "result":[B
    const/4 v1, 0x0

    .line 106
    .local v1, "output":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    move v2, v1

    .end local v1    # "output":I
    .local v2, "output":I
    :goto_0
    if-lt v4, v6, :cond_0

    .line 110
    return-object v3

    .line 106
    :cond_0
    aget-char v0, v5, v4

    .line 107
    .local v0, "ch":C
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "output":I
    .restart local v1    # "output":I
    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 108
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "output":I
    .restart local v2    # "output":I
    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v1

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static padRight(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "padChar"    # C
    .param p2, "n"    # I

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "%-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
