.class public final enum Lcom/liquable/nemo/db/PreferenceDao$Type;
.super Ljava/lang/Enum;
.source "PreferenceDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/db/PreferenceDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/db/PreferenceDao$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/db/PreferenceDao$Type;

.field public static final enum BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

.field public static final enum FLOAT:Lcom/liquable/nemo/db/PreferenceDao$Type;

.field public static final enum INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

.field public static final enum LONG:Lcom/liquable/nemo/db/PreferenceDao$Type;

.field public static final enum STRING:Lcom/liquable/nemo/db/PreferenceDao$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/liquable/nemo/db/PreferenceDao$Type;

    const-string/jumbo v1, "BOOLEAN"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/db/PreferenceDao$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    new-instance v0, Lcom/liquable/nemo/db/PreferenceDao$Type;

    const-string/jumbo v1, "FLOAT"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/db/PreferenceDao$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Type;->FLOAT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    new-instance v0, Lcom/liquable/nemo/db/PreferenceDao$Type;

    const-string/jumbo v1, "INT"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/db/PreferenceDao$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Type;->INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    new-instance v0, Lcom/liquable/nemo/db/PreferenceDao$Type;

    const-string/jumbo v1, "LONG"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/db/PreferenceDao$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Type;->LONG:Lcom/liquable/nemo/db/PreferenceDao$Type;

    new-instance v0, Lcom/liquable/nemo/db/PreferenceDao$Type;

    const-string/jumbo v1, "STRING"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/db/PreferenceDao$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Type;->STRING:Lcom/liquable/nemo/db/PreferenceDao$Type;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/db/PreferenceDao$Type;

    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->BOOLEAN:Lcom/liquable/nemo/db/PreferenceDao$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->FLOAT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->INT:Lcom/liquable/nemo/db/PreferenceDao$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->LONG:Lcom/liquable/nemo/db/PreferenceDao$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/db/PreferenceDao$Type;->STRING:Lcom/liquable/nemo/db/PreferenceDao$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/db/PreferenceDao$Type;->$VALUES:[Lcom/liquable/nemo/db/PreferenceDao$Type;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/db/PreferenceDao$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/db/PreferenceDao$Type;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/db/PreferenceDao$Type;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/liquable/nemo/db/PreferenceDao$Type;->$VALUES:[Lcom/liquable/nemo/db/PreferenceDao$Type;

    invoke-virtual {v0}, [Lcom/liquable/nemo/db/PreferenceDao$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/db/PreferenceDao$Type;

    return-object v0
.end method
