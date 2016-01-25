.class public final enum Lcom/liquable/nemo/analytics/AbTestKey;
.super Ljava/lang/Enum;
.source "AbTestKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/AbTestKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/AbTestKey;

.field public static final enum DUMMY:Lcom/liquable/nemo/analytics/AbTestKey;


# instance fields
.field private abTestGroups:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/liquable/nemo/analytics/AbTestGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final dev:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/liquable/nemo/analytics/AbTestKey;

    const-string/jumbo v1, "DUMMY"

    sget-object v2, Lcom/liquable/nemo/analytics/AbTestGroup;->A:Lcom/liquable/nemo/analytics/AbTestGroup;

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/liquable/nemo/analytics/AbTestKey;-><init>(Ljava/lang/String;ILcom/liquable/nemo/analytics/AbTestGroup;Z)V

    sput-object v0, Lcom/liquable/nemo/analytics/AbTestKey;->DUMMY:Lcom/liquable/nemo/analytics/AbTestKey;

    .line 5
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/analytics/AbTestKey;

    sget-object v1, Lcom/liquable/nemo/analytics/AbTestKey;->DUMMY:Lcom/liquable/nemo/analytics/AbTestKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/analytics/AbTestKey;->$VALUES:[Lcom/liquable/nemo/analytics/AbTestKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/liquable/nemo/analytics/AbTestGroup;Z)V
    .locals 1
    .param p3, "abTestGroup"    # Lcom/liquable/nemo/analytics/AbTestGroup;
    .param p4, "dev"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/analytics/AbTestGroup;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-static {p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/liquable/nemo/analytics/AbTestKey;-><init>(Ljava/lang/String;ILjava/util/EnumSet;Z)V

    .line 14
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/EnumSet;Z)V
    .locals 0
    .param p4, "dev"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/liquable/nemo/analytics/AbTestGroup;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p3, "abTestGroups":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/liquable/nemo/analytics/AbTestGroup;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/liquable/nemo/analytics/AbTestKey;->abTestGroups:Ljava/util/EnumSet;

    .line 18
    iput-boolean p4, p0, Lcom/liquable/nemo/analytics/AbTestKey;->dev:Z

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/AbTestKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/liquable/nemo/analytics/AbTestKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/AbTestKey;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/AbTestKey;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/liquable/nemo/analytics/AbTestKey;->$VALUES:[Lcom/liquable/nemo/analytics/AbTestKey;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/AbTestKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/AbTestKey;

    return-object v0
.end method


# virtual methods
.method public isDev()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/liquable/nemo/analytics/AbTestKey;->dev:Z

    return v0
.end method

.method public isMatch(Lcom/liquable/nemo/analytics/AbTestGroup;)Z
    .locals 1
    .param p1, "target"    # Lcom/liquable/nemo/analytics/AbTestGroup;

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/analytics/AbTestKey;->abTestGroups:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
