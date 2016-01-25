.class public final enum Lcom/liquable/nemo/db/PreferenceDao$Column;
.super Ljava/lang/Enum;
.source "PreferenceDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/db/PreferenceDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/db/PreferenceDao$Column;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/db/PreferenceDao$Column;

.field public static final enum KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

.field public static final enum TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

.field public static final enum VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;


# instance fields
.field private columnName:Ljava/lang/String;

.field private dbType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/liquable/nemo/db/PreferenceDao$Column;

    const-string/jumbo v1, "KEY"

    const-string/jumbo v2, "KEY"

    const-string/jumbo v3, "TEXT PRIMARY KEY"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/liquable/nemo/db/PreferenceDao$Column;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Column;->KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

    .line 16
    new-instance v0, Lcom/liquable/nemo/db/PreferenceDao$Column;

    const-string/jumbo v1, "VALUE"

    const-string/jumbo v2, "VALUE"

    const-string/jumbo v3, "TEXT"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/liquable/nemo/db/PreferenceDao$Column;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    .line 17
    new-instance v0, Lcom/liquable/nemo/db/PreferenceDao$Column;

    const-string/jumbo v1, "TYPE"

    const-string/jumbo v2, "TYPE"

    const-string/jumbo v3, "NUMERIC"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/liquable/nemo/db/PreferenceDao$Column;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/db/PreferenceDao$Column;

    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->KEY:Lcom/liquable/nemo/db/PreferenceDao$Column;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->VALUE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Column;->TYPE:Lcom/liquable/nemo/db/PreferenceDao$Column;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Column;->$VALUES:[Lcom/liquable/nemo/db/PreferenceDao$Column;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "dbType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/liquable/nemo/db/PreferenceDao$Column;->columnName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/liquable/nemo/db/PreferenceDao$Column;->dbType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 20
    invoke-static {}, Lcom/liquable/nemo/db/PreferenceDao$Column;->values()[Lcom/liquable/nemo/db/PreferenceDao$Column;

    move-result-object v0

    .line 21
    .local v0, "columns":[Lcom/liquable/nemo/db/PreferenceDao$Column;
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 22
    .local v2, "projections":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 23
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/liquable/nemo/db/PreferenceDao$Column;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/db/PreferenceDao$Column;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/db/PreferenceDao$Column;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/db/PreferenceDao$Column;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/liquable/nemo/db/PreferenceDao$Column;->$VALUES:[Lcom/liquable/nemo/db/PreferenceDao$Column;

    invoke-virtual {v0}, [Lcom/liquable/nemo/db/PreferenceDao$Column;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/db/PreferenceDao$Column;

    return-object v0
.end method


# virtual methods
.method public final getDbType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/db/PreferenceDao$Column;->dbType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/db/PreferenceDao$Column;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
