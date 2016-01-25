.class public final Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;
.super Ljava/lang/Object;
.source "MoaLiteProclistVersion.java"


# static fields
.field static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field final major:I

.field final minor:I

.field final patch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "^([0-9]+)\\.([0-9]+)\\.([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "m1"    # I
    .param p2, "m2"    # I
    .param p3, "p"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->major:I

    .line 16
    iput p2, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->minor:I

    .line 17
    iput p3, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->patch:I

    .line 18
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 37
    sget-object v8, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 38
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 39
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 40
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "smajor":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "sminor":Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "spatch":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 46
    .local v1, "major":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 47
    .local v3, "minor":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 48
    .local v4, "patch":I
    new-instance v8, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;

    invoke-direct {v8, v1, v3, v4}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "major":I
    .end local v3    # "minor":I
    .end local v4    # "patch":I
    .end local v5    # "smajor":Ljava/lang/String;
    .end local v6    # "sminor":Ljava/lang/String;
    .end local v7    # "spatch":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 49
    .restart local v5    # "smajor":Ljava/lang/String;
    .restart local v6    # "sminor":Ljava/lang/String;
    .restart local v7    # "spatch":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v8, v9

    .line 50
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "smajor":Ljava/lang/String;
    .end local v6    # "sminor":Ljava/lang/String;
    .end local v7    # "spatch":Ljava/lang/String;
    :cond_0
    move-object v8, v9

    .line 54
    goto :goto_0
.end method


# virtual methods
.method public supports(Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;)Z
    .locals 2
    .param p1, "targetVersion"    # Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;

    .prologue
    .line 26
    iget v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->major:I

    iget v1, p1, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->major:I

    if-lt v0, v1, :cond_0

    .line 27
    iget v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->minor:I

    iget v1, p1, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->minor:I

    if-lt v0, v1, :cond_0

    .line 28
    iget v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->patch:I

    iget v1, p1, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->patch:I

    if-lt v0, v1, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->major:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->patch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
