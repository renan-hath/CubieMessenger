.class public final Lcom/liquable/nemo/NemoVersion;
.super Ljava/lang/Object;
.source "NemoVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/liquable/nemo/NemoVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final KNOWN_ANDROID_PATCHES:[I

.field private static final VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x212815ef8f5dde24L


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "\\s*(\\d+)\\.(\\d+)\\.(\\d+)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/NemoVersion;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    const/16 v0, 0x52

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/liquable/nemo/NemoVersion;->KNOWN_ANDROID_PATCHES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xda
        0xd8
        0xd3
        0xd1
        0xcf
        0xcd
        0xcc
        0xcb
        0xca
        0xc9
        0xc8
        0xc7
        0xc6
        0xc5
        0xc4
        0xc3
        0xc2
        0xc1
        0xc0
        0xbf
        0xbe
        0xbd
        0xbc
        0xbb
        0xba
        0xb9
        0xb8
        0xb7
        0xb6
        0xb5
        0xb4
        0xb3
        0xb2
        0xb0
        0xae
        0xac
        0xaa
        0xa8
        0xa6
        0xa5
        0xa4
        0xa2
        0xa1
        0x9d
        0x9c
        0x9a
        0x99
        0x98
        0x97
        0x96
        0x95
        0x91
        0x8c
        0x7d
        0x7c
        0x75
        0x74
        0x6f
        0x66
        0x63
        0x62
        0x5d
        0x5c
        0x52
        0x51
        0x4a
        0x49
        0x41
        0x37
        0x35
        0x33
        0x2b
        0x24
        0x1d
        0x1c
        0x1b
        0x11
        0xa
        0x7
        0x4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    .line 60
    iput p2, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    .line 61
    iput p3, p0, Lcom/liquable/nemo/NemoVersion;->patch:I

    .line 62
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/liquable/nemo/NemoVersion;
    .locals 7
    .param p0, "versionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "version should not be blank"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 31
    :cond_0
    sget-object v4, Lcom/liquable/nemo/NemoVersion;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 33
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "version must be x.x.x format, input:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 37
    .local v0, "major":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 38
    .local v2, "minor":I
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 39
    .local v3, "patch":I
    new-instance v4, Lcom/liquable/nemo/NemoVersion;

    invoke-direct {v4, v0, v2, v3}, Lcom/liquable/nemo/NemoVersion;-><init>(III)V

    return-object v4
.end method


# virtual methods
.method public compareTo(Lcom/liquable/nemo/NemoVersion;)I
    .locals 4
    .param p1, "that"    # Lcom/liquable/nemo/NemoVersion;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/liquable/nemo/NemoVersion;->isWildcard()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/NemoVersion;->isWildcard()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 84
    :cond_1
    :goto_0
    return v0

    .line 72
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    iget v3, p1, Lcom/liquable/nemo/NemoVersion;->major:I

    if-gt v2, v3, :cond_1

    .line 75
    iget v2, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    iget v3, p1, Lcom/liquable/nemo/NemoVersion;->major:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    iget v3, p1, Lcom/liquable/nemo/NemoVersion;->minor:I

    if-gt v2, v3, :cond_1

    .line 78
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    iget v3, p1, Lcom/liquable/nemo/NemoVersion;->major:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    iget v3, p1, Lcom/liquable/nemo/NemoVersion;->minor:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/liquable/nemo/NemoVersion;->patch:I

    iget v3, p1, Lcom/liquable/nemo/NemoVersion;->patch:I

    if-gt v2, v3, :cond_1

    .line 81
    :cond_4
    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    iget v2, p1, Lcom/liquable/nemo/NemoVersion;->major:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    iget v2, p1, Lcom/liquable/nemo/NemoVersion;->minor:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->patch:I

    iget v2, p1, Lcom/liquable/nemo/NemoVersion;->patch:I

    if-ne v0, v2, :cond_5

    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/NemoVersion;->compareTo(Lcom/liquable/nemo/NemoVersion;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 96
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 98
    check-cast v0, Lcom/liquable/nemo/NemoVersion;

    .line 99
    .local v0, "other":Lcom/liquable/nemo/NemoVersion;
    iget v3, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    iget v4, v0, Lcom/liquable/nemo/NemoVersion;->major:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 100
    goto :goto_0

    .line 102
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    iget v4, v0, Lcom/liquable/nemo/NemoVersion;->minor:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/NemoVersion;->patch:I

    iget v4, v0, Lcom/liquable/nemo/NemoVersion;->patch:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    return v0
.end method

.method public getPatch()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->patch:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 125
    const/16 v0, 0x1f

    .line 126
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 127
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    add-int/lit8 v1, v2, 0x1f

    .line 128
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    add-int v1, v2, v3

    .line 129
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/NemoVersion;->patch:I

    add-int v1, v2, v3

    .line 130
    return v1
.end method

.method public isAndroid()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    iget v3, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    if-ne v3, v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    iget v3, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    if-nez v3, :cond_2

    .line 143
    sget-object v4, Lcom/liquable/nemo/NemoVersion;->KNOWN_ANDROID_PATCHES:[I

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget v0, v4, v3

    .line 144
    .local v0, "knownAndroidPath":I
    iget v6, p0, Lcom/liquable/nemo/NemoVersion;->patch:I

    if-eq v0, v6, :cond_0

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "knownAndroidPath":I
    :cond_2
    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public isDesktop()Z
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIOS()Z
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/NemoVersion;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/NemoVersion;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewer(Lcom/liquable/nemo/NemoVersion;)Z
    .locals 1
    .param p1, "that"    # Lcom/liquable/nemo/NemoVersion;

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/NemoVersion;->compareTo(Lcom/liquable/nemo/NemoVersion;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWildcard()Z
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/liquable/nemo/NemoVersion;->patch:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/liquable/nemo/NemoVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/NemoVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/NemoVersion;->patch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
