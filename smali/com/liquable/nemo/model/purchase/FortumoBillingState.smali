.class public final enum Lcom/liquable/nemo/model/purchase/FortumoBillingState;
.super Ljava/lang/Enum;
.source "FortumoBillingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/model/purchase/FortumoBillingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/model/purchase/FortumoBillingState;

.field public static final enum FAILED:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

.field public static final enum NOT_RECEIVED:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

.field public static final enum OK:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

.field public static final enum PENDING:Lcom/liquable/nemo/model/purchase/FortumoBillingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/purchase/FortumoBillingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->OK:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    new-instance v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/model/purchase/FortumoBillingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->FAILED:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    new-instance v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/model/purchase/FortumoBillingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->PENDING:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    new-instance v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    const-string/jumbo v1, "NOT_RECEIVED"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/model/purchase/FortumoBillingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->NOT_RECEIVED:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    sget-object v1, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->OK:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->FAILED:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->PENDING:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->NOT_RECEIVED:Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->$VALUES:[Lcom/liquable/nemo/model/purchase/FortumoBillingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/purchase/FortumoBillingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/model/purchase/FortumoBillingState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->$VALUES:[Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    invoke-virtual {v0}, [Lcom/liquable/nemo/model/purchase/FortumoBillingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    return-object v0
.end method
