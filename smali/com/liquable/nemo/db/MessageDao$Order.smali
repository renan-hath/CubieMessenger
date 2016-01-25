.class final enum Lcom/liquable/nemo/db/MessageDao$Order;
.super Ljava/lang/Enum;
.source "MessageDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/db/MessageDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/db/MessageDao$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/db/MessageDao$Order;

.field public static final enum ASC:Lcom/liquable/nemo/db/MessageDao$Order;

.field public static final enum DESC:Lcom/liquable/nemo/db/MessageDao$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/liquable/nemo/db/MessageDao$Order;

    const-string/jumbo v1, "ASC"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/db/MessageDao$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/db/MessageDao$Order;->ASC:Lcom/liquable/nemo/db/MessageDao$Order;

    new-instance v0, Lcom/liquable/nemo/db/MessageDao$Order;

    const-string/jumbo v1, "DESC"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/db/MessageDao$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/db/MessageDao$Order;->DESC:Lcom/liquable/nemo/db/MessageDao$Order;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/db/MessageDao$Order;

    sget-object v1, Lcom/liquable/nemo/db/MessageDao$Order;->ASC:Lcom/liquable/nemo/db/MessageDao$Order;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/db/MessageDao$Order;->DESC:Lcom/liquable/nemo/db/MessageDao$Order;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/db/MessageDao$Order;->$VALUES:[Lcom/liquable/nemo/db/MessageDao$Order;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/db/MessageDao$Order;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/liquable/nemo/db/MessageDao$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/db/MessageDao$Order;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/db/MessageDao$Order;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/liquable/nemo/db/MessageDao$Order;->$VALUES:[Lcom/liquable/nemo/db/MessageDao$Order;

    invoke-virtual {v0}, [Lcom/liquable/nemo/db/MessageDao$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/db/MessageDao$Order;

    return-object v0
.end method
