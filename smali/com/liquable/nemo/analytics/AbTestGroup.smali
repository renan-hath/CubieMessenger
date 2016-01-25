.class public final enum Lcom/liquable/nemo/analytics/AbTestGroup;
.super Ljava/lang/Enum;
.source "AbTestGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/AbTestGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/AbTestGroup;

.field public static final enum A:Lcom/liquable/nemo/analytics/AbTestGroup;

.field public static final enum B:Lcom/liquable/nemo/analytics/AbTestGroup;

.field public static final enum C:Lcom/liquable/nemo/analytics/AbTestGroup;

.field public static final enum D:Lcom/liquable/nemo/analytics/AbTestGroup;

.field public static final enum E:Lcom/liquable/nemo/analytics/AbTestGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/analytics/AbTestGroup;

    const-string/jumbo v1, "A"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/AbTestGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/AbTestGroup;->A:Lcom/liquable/nemo/analytics/AbTestGroup;

    new-instance v0, Lcom/liquable/nemo/analytics/AbTestGroup;

    const-string/jumbo v1, "B"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/AbTestGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/AbTestGroup;->B:Lcom/liquable/nemo/analytics/AbTestGroup;

    new-instance v0, Lcom/liquable/nemo/analytics/AbTestGroup;

    const-string/jumbo v1, "C"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/AbTestGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/AbTestGroup;->C:Lcom/liquable/nemo/analytics/AbTestGroup;

    new-instance v0, Lcom/liquable/nemo/analytics/AbTestGroup;

    const-string/jumbo v1, "D"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/analytics/AbTestGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/AbTestGroup;->D:Lcom/liquable/nemo/analytics/AbTestGroup;

    new-instance v0, Lcom/liquable/nemo/analytics/AbTestGroup;

    const-string/jumbo v1, "E"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/analytics/AbTestGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/AbTestGroup;->E:Lcom/liquable/nemo/analytics/AbTestGroup;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/analytics/AbTestGroup;

    sget-object v1, Lcom/liquable/nemo/analytics/AbTestGroup;->A:Lcom/liquable/nemo/analytics/AbTestGroup;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/analytics/AbTestGroup;->B:Lcom/liquable/nemo/analytics/AbTestGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/AbTestGroup;->C:Lcom/liquable/nemo/analytics/AbTestGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/analytics/AbTestGroup;->D:Lcom/liquable/nemo/analytics/AbTestGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/analytics/AbTestGroup;->E:Lcom/liquable/nemo/analytics/AbTestGroup;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/analytics/AbTestGroup;->$VALUES:[Lcom/liquable/nemo/analytics/AbTestGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/liquable/nemo/analytics/AbTestGroup;
    .locals 3
    .param p0, "installId"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-static {}, Lcom/liquable/nemo/analytics/AbTestGroup;->values()[Lcom/liquable/nemo/analytics/AbTestGroup;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {}, Lcom/liquable/nemo/analytics/AbTestGroup;->values()[Lcom/liquable/nemo/analytics/AbTestGroup;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/AbTestGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/analytics/AbTestGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/AbTestGroup;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/AbTestGroup;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/analytics/AbTestGroup;->$VALUES:[Lcom/liquable/nemo/analytics/AbTestGroup;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/AbTestGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/AbTestGroup;

    return-object v0
.end method
