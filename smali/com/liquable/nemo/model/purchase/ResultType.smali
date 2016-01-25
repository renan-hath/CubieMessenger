.class public final enum Lcom/liquable/nemo/model/purchase/ResultType;
.super Ljava/lang/Enum;
.source "ResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/model/purchase/ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/model/purchase/ResultType;

.field public static final enum DUPLICATE:Lcom/liquable/nemo/model/purchase/ResultType;

.field public static final enum IGNORE:Lcom/liquable/nemo/model/purchase/ResultType;

.field public static final enum SUCCESS:Lcom/liquable/nemo/model/purchase/ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/liquable/nemo/model/purchase/ResultType;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/purchase/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/purchase/ResultType;->SUCCESS:Lcom/liquable/nemo/model/purchase/ResultType;

    .line 10
    new-instance v0, Lcom/liquable/nemo/model/purchase/ResultType;

    const-string/jumbo v1, "IGNORE"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/model/purchase/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/purchase/ResultType;->IGNORE:Lcom/liquable/nemo/model/purchase/ResultType;

    .line 11
    new-instance v0, Lcom/liquable/nemo/model/purchase/ResultType;

    const-string/jumbo v1, "DUPLICATE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/model/purchase/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/purchase/ResultType;->DUPLICATE:Lcom/liquable/nemo/model/purchase/ResultType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/model/purchase/ResultType;

    sget-object v1, Lcom/liquable/nemo/model/purchase/ResultType;->SUCCESS:Lcom/liquable/nemo/model/purchase/ResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/model/purchase/ResultType;->IGNORE:Lcom/liquable/nemo/model/purchase/ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/model/purchase/ResultType;->DUPLICATE:Lcom/liquable/nemo/model/purchase/ResultType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/model/purchase/ResultType;->$VALUES:[Lcom/liquable/nemo/model/purchase/ResultType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/purchase/ResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/liquable/nemo/model/purchase/ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/purchase/ResultType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/model/purchase/ResultType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/liquable/nemo/model/purchase/ResultType;->$VALUES:[Lcom/liquable/nemo/model/purchase/ResultType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/model/purchase/ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/model/purchase/ResultType;

    return-object v0
.end method
