.class public final enum Lcom/liquable/nemo/status/model/UnknownStatus;
.super Ljava/lang/Enum;
.source "UnknownStatus.java"

# interfaces
.implements Lcom/liquable/nemo/status/model/IChatStatus;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/status/model/UnknownStatus;",
        ">;",
        "Lcom/liquable/nemo/status/model/IChatStatus;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/status/model/UnknownStatus;

.field public static final enum INSTANCE:Lcom/liquable/nemo/status/model/UnknownStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/status/model/UnknownStatus;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/status/model/UnknownStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/status/model/UnknownStatus;->INSTANCE:Lcom/liquable/nemo/status/model/UnknownStatus;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/status/model/UnknownStatus;

    sget-object v1, Lcom/liquable/nemo/status/model/UnknownStatus;->INSTANCE:Lcom/liquable/nemo/status/model/UnknownStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/status/model/UnknownStatus;->$VALUES:[Lcom/liquable/nemo/status/model/UnknownStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/status/model/UnknownStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/status/model/UnknownStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/status/model/UnknownStatus;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/status/model/UnknownStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/status/model/UnknownStatus;->$VALUES:[Lcom/liquable/nemo/status/model/UnknownStatus;

    invoke-virtual {v0}, [Lcom/liquable/nemo/status/model/UnknownStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/status/model/UnknownStatus;

    return-object v0
.end method
